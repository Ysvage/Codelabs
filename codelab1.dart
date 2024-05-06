import 'dart:math';

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

class Rectangle {
  Point origin;
  int width;
  int height;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      "Origin(${origin.x}, ${origin.y}), width: $width, height: $height";
}

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}
/*class CircleMock implements Circle {
  num area;
  num radius;
}*/

String scream(int length) => "A${'a' * length}h!";

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
  bike.speedUp(3);
  print(bike);
  bike.applyBrake(1);
  print(bike);

  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

  /*final circle = Circle(2);
  final square = Square(2);*/
  /*final circle = shapeFactory('circle');
  final square = shapeFactory('square');*/
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);

  final values = [1, 2, 3, 5, 10, 50];
  /*for (var length in values) {
    print(scream(length));
  }*/
  /*values.map(scream).forEach(print);*/
  values.skip(1).take(3).map(scream).forEach(print);
}
