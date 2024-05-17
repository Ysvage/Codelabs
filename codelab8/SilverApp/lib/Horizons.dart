// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print, deprecated_member_use, file_names

import 'package:flutter/material.dart';

void main() {
  runApp(HorizonsApp());
}

class HorizonsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Horizons Weather',
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              stretch: true,
              onStretchTrigger: () async {
                // Llama a una función para cargar más datos desde el servidor
                print('Load More Data');
              },
              backgroundColor: Colors.teal[800],
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                title: Text('Horizons'),
                background: DecoratedBox(
                  position: DecorationPosition.foreground,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: <Color>[
                        Colors.teal[800]!,
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Image.network(
                    'headerImageURL',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            WeeklyForecastList(),
          ],
        ),
      ),
    );
  }
}

class WeeklyForecastList extends StatelessWidget {
  final List<DailyForecast> dailyForecasts = [
    DailyForecast(
      imageId: 'dailyForecastImageURL1',
      date: DateTime.now().add(Duration(days: 0)),
      description: 'Sunny',
      highTemp: 85,
      lowTemp: 65,
    ),
    DailyForecast(
      imageId: 'dailyForecastImageURL2',
      date: DateTime.now().add(Duration(days: 1)),
      description: 'Partly Cloudy',
      highTemp: 70,
      lowTemp: 50,
    ),
    DailyForecast(
      imageId: 'https://i.ibb.co/QpWGK5j/Geeksfor-Geeks.png',
      date: DateTime.now().add(Duration(days: 2)),
      description: 'Partly Cloudy',
      highTemp: 73,
      lowTemp: 55,
    ),
    DailyForecast(
      imageId: 'dailyForecastImageURL2',
      date: DateTime.now().add(Duration(days: 3)),
      description: 'Partly Cloudy',
      highTemp: 78,
      lowTemp: 58,
    ),
    DailyForecast(
      imageId: 'dailyForecastImageURL2',
      date: DateTime.now().add(Duration(days: 4)),
      description: 'Sunny',
      highTemp: 85,
      lowTemp: 65,
    ),
    DailyForecast(
      imageId: 'dailyForecastImageURL2',
      date: DateTime.now().add(Duration(days: 5)),
      description: 'Partly Cloudy',
      highTemp: 71,
      lowTemp: 49,
    ),
    DailyForecast(
      imageId: 'dailyForecastImageURL2',
      date: DateTime.now().add(Duration(days: 6)),
      description: 'Sunny',
      highTemp: 75,
      lowTemp: 55,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final DailyForecast dailyForecast = dailyForecasts[index];

          return Card(
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                  width: 200.0,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      DecoratedBox(
                        position: DecorationPosition.foreground,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: <Color>[
                              Colors.grey[800]!,
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: Image.network(
                          dailyForecast.imageId,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Text(
                          dailyForecast.date.day.toString(), // Use day here
                          style: textTheme.headline2,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          dailyForecast.date.weekday
                              .toString(), // Use weekday here
                          style: textTheme.headline5,
                        ),
                        Text(dailyForecast.description),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${dailyForecast.highTemp} | ${dailyForecast.lowTemp} F',
                    style: textTheme.subtitle2,
                  ),
                ),
              ],
            ),
          );
        },
        // Cambia el número de días que quieres mostrar
        childCount: 7,
      ),
    );
  }
}

// Clase para almacenar datos del pronóstico diario
class DailyForecast {
  final String imageId;
  final DateTime date;
  final String description;
  final int highTemp;
  final int lowTemp;

  DailyForecast({
    required this.imageId,
    required this.date,
    required this.description,
    required this.highTemp,
    required this.lowTemp,
  });
}
