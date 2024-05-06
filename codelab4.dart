// Yasser Alezandre Saldaña Barquero Codelab 4 Understanding null safety

// Without null safety:
bool isEmpty(String string) => string.length == 0;

/*main() {
  //isEmpty(null);

  // Using null safety:
 /* makeCoffee(String coffee, [String? dairy]) {
    if (dairy != null) {
      print('$coffee with $dairy');
    } else {
      print('Black $coffee');
    }
  }*/

// Hypothetical unsound null safety:
/*bad(String? maybeString) {
  print(maybeString.length);
}

main() {
  bad(null);
}*/
}*/

// Using nullable types

/*// Hypothetical unsound null safety:
/*bad(String? maybeString) {
  print(maybeString.length);
}*/

main() {
  //bad(null);
}*/

// Hypothetical unsound null safety:
/*requireStringNotNull(String definitelyString) {
  print(definitelyString.length);
}

main() {
  String? maybeString = null; // Or not!
  requireStringNotNull(maybeString);
}*/

// Without null safety:
/*requireStringNotObject(String definitelyString) {
  print(definitelyString.length);
}

main() {
  Object maybeString = 'it is';
  requireStringNotObject(maybeString);
}*/

// Using null safety:
/*requireStringNotObject(String definitelyString) {
  print(definitelyString.length);
}

main() {
  Object maybeString = 'it is';
  requireStringNotObject(maybeString as String);

  // Without null safety:
List<int> filterEvens(List<int> ints) {
  return ints.where((n) => n.isEven);
}
}*/

// Top and bottom

// Using null safety:
/*void main() {
  try {
    print(alwaysReturns(0));
    // Ejemplo con un valor negativo
    // print(alwaysReturns(-5));
    print(alwaysReturns(100));
    // Ejemplo con un valor mayor a 1000
    // print(alwaysReturns(1500));
  } catch (e) {
    print(e.toString());
  }
}

String alwaysReturns(int n) {
  if (n == 0) {
    return 'zero';
  } else if (n < 0) {
    throw ArgumentError('Negative values not allowed.');
  } else {
    if (n > 1000) {
      return 'big';
    } else {
      return n.toString();
    }
  }
}*/

// Uninitialized variables

/*void main() {
  topLevel = 10;
  print('Top level variable: $topLevel');

  SomeClass.staticField = 20;
  print('Static field in SomeClass: ${SomeClass.staticField}');
}

int topLevel = 0;

class SomeClass {
  static int staticField = 0;
}*/

// Using null safety:
/*void main() {
  SomeClass instance = SomeClass(5);
  print('atDeclaration: ${instance.atDeclaration}');
  print('initializingFormal: ${instance.initializingFormal}');
  print('initializationList: ${instance.initializationList}');
}

class SomeClass {
  int atDeclaration = 0;
  int initializingFormal;
  int initializationList;

  SomeClass(this.initializingFormal) : initializationList = 0;
}*/

/*void main() {
  tracingFibonacci(5);
}

int tracingFibonacci(int n) {
   int result;
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  print(result);
  return result;
}*/

// Flow analysis

// With (or without) null safety:
/*void main() {
  List<int> myList = [];
  print(isEmptyList(myList)); // Imprimirá true
}

bool isEmptyList(Object object) {
  if (object is List) {
    return object.isEmpty; // <-- OK!
  } else {
    return false;
  }
}
*/

// Without null safety:
/*void main() {
  List<int> myList = [];
  print(isEmptyList(myList)); // Imprimirá true
}

bool isEmptyList(Object object) {
  if (object is! List) return false;
  List list = object as List;
  return list.isEmpty;
}*/

// Reachability analysis

// Using null safety:
/*bool isEmptyList(Object object) {
  if (object is! List) return false;
  return object.isEmpty;
}

void main() {
  List<int> myList = [];
  print(isEmptyList(myList)); // Imprimirá true
}*/

// Never for unreachable code
/*Never wrongType(String type, Object value) {
  throw ArgumentError('Expected $type, but was ${value.runtimeType}.');
}

void main() {
  try {
    wrongType('int', 'hello');
  } catch (e) {
    print(e); // Imprimirá: ArgumentError: Expected int, but was String.
  }
}*/

/*class Point {
  final double x, y;

  Point({required this.x, required this.y});

  @override
  bool operator ==(Object other) {
    if (other is! Point) {
      throw ArgumentError('Expected Point, but was ${other.runtimeType}.');
    }
    return x == (other as Point).x && y == (other as Point).y;
  }

  // Constructor and hashCode...
}

void main() {
  Point p1 = Point(x: 1, y: 2);
  Point p2 = Point(x: 1, y: 2);
  print(p1 == p2); // Imprimirá true
}*/

/* Definite assignment analysis */

// Using null safety:
/*void main() {
  tracingFibonacci(5);
}

int tracingFibonacci(int n) {
  final int result;
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  print(result);
  return result;
}
*/

// Type promotion on null checks

// Using null safety:
/*void main() {
  String command1 = makeCommand('ls');
  print(command1); // Imprime: ls

  String command2 = makeCommand('grep', ['-i', 'hello']);
  print(command2); // Imprime: grep -i hello
}

String makeCommand(String executable, [List<String>? arguments]) {
  var result = executable;
  if (arguments != null) {
    result += ' ' + arguments.join(' ');
  }
  return result;
}
*/

// Unnecessary code warnings

// Using null safety:
/*void main() {
  List<Object> emptyList = [];
  print(checkList(emptyList)); // Imprime: Empty list

  List<Object>? nullableList = null;
  print(checkList(nullableList)); // Imprime: No list

  List<Object> nonEmptyList = [1, 2, 3];
  print(checkList(nonEmptyList)); // Imprime: Got something
}

String checkList(List<Object>? list) {
  if (list == null) return 'No list';
  if (list.isEmpty) {
    return 'Empty list';
  }
  return 'Got something';
}*/

//Working with nullable types
// Smarter null-aware methods
/*void main() {
  // Without null safety:
/*String notAString = null;
print(notAString?.length);*/
// Using null safety:
  /*String? notAString = null;
  print(notAString?.length); //imprime null*/
  // Using null safety:
  /*String? notAString = null;
  print(notAString?.length.isEven); */
}*/
/*class Gizmo {
  String gizmo;

  Gizmo(this.gizmo);
}

class Doohickey {
  Gizmo? gizmo;

  Doohickey(this.gizmo);
}

class Thing {
  Doohickey? doohickey;

  Thing(this.doohickey);
}

void showGizmo(Thing? thing) {
  print(thing?.doohickey?.gizmo?.gizmo);
}

void main() {
  Thing? myThing = Thing(Doohickey(Gizmo("My Gizmo")));
  Thing? nullThing = null;

  print("Printing Gizmo of myThing:");
  showGizmo(myThing); // Imprime: My Gizmo

  print("Printing Gizmo of nullThing:");
  showGizmo(nullThing); // Imprime: null
}
*/
/*// Using null safety:

// Null-aware cascade:
receiver?..method();

// Null-aware index operator:
receiver?[index];
// Allowed with or without null safety:
function?.call(arg1, arg2);*/

// Non-null assertion operator

// Using null safety, incorrectly:
/*class HttpResponse {
  final int code;
  final String? error;

  HttpResponse.ok()
      : code = 200,
        error = null;
  HttpResponse.notFound()
      : code = 404,
        error = 'Not found';

  @override
  String toString() {
    if (code == 200) return 'OK';
    return 'ERROR $code ${error.toUpperCase()}';
  }
}*/
// Using null safety:
/*String toString() {
  if (code == 200) return 'OK';
  return 'ERROR $code ${(error as String).toUpperCase()}';
}*/

/*// Using null safety:
String toString() {
  if (code == 200) return 'OK';
  return 'ERROR $code ${error!.toUpperCase()}';
}*/

// Late variables

// Using null safety, incorrectly:
/*class Coffee {
  String _temperature;

  void heat() {
    _temperature = 'hot';
  }

  void chill() {
    _temperature = 'iced';
  }

  String serve() => _temperature + ' coffee';
}*/
// Using null safety:
/*class Coffee {
  String? _temperature;

  void heat() {
    _temperature = 'hot';
  }

  void chill() {
    _temperature = 'iced';
  }

  String serve() => _temperature! + ' coffee';
}*/
// Using null safety:
/*class Coffee {
  late String _temperature;

  void heat() {
    _temperature = 'hot';
  }

  void chill() {
    _temperature = 'iced';
  }

  String serve() => _temperature + ' coffee';
}*/

/*main() {
  var coffee = Coffee();
  coffee.heat();
  coffee.serve();
}*/

// Lazy initialization

/*// Using null safety:
class Weather {
  late int _temperature = _readThermometer();
}*/

// Late final variables

// Using null safety:
/*class Coffee {
  late final String _temperature;

  void heat() {
    _temperature = 'hot';
  }

  void chill() {
    _temperature = 'iced';
  }

  String serve() => _temperature + ' coffee';
}

main() {
  var coffee = Coffee();
  coffee.heat();
  coffee.serve();
}*/

//Required named parameters

/*// Using null safety:
function({int? a, required int? b, int? c, required int? d}) {} */

// Abstract fields

/* abstract class Cup {
  Beverage contents;
}
abstract class Cup {
  Beverage get contents;
  set contents(Beverage);
}
abstract class Cup {
  abstract Beverage contents;
}*/

// Working with nullable fields

// Using null safety, incorrectly:
/*class Coffee {
  String? _temperature;

  void heat() {
    _temperature = 'hot';
  }

  void chill() {
    _temperature = 'iced';
  }

  // Using null safety:
  void checkTemp() {
    var temperature = _temperature;
    if (temperature != null) {
      print('Ready to serve ' + temperature + '!');
    }
  }

  String serve() => _temperature! + ' coffee';
}

main() {
  var coffee = Coffee();
  coffee.heat();
  coffee.serve();
  coffee.checkTemp();
}*/

// Nullability and generics

// Using null safety:
/*class Box<T> {
  final T object;
  Box(this.object);
}*/
/*main() {
  Box<String>('a string');
  Box<int?>(null);
}*/

// Using null safety:
/*class Box<T> {
  T? object;
  Box.empty();
  Box.full(this.object);
}*/
// Using null safety:
/*class Box<T> {
  T? object;
  Box.empty();
  Box.full(this.object);

  T unbox() => object as T;
}*/

/*
// Using null safety:
main() {
  var box = Box<int?>.full(null);
  print(box.unbox());
}*/

// Using null safety:
/*class Interval<T extends num> {
  T min, max;

  Interval(this.min, this.max);

  bool get isEmpty => max <= min;
}*/
// Using null safety:
/*class Interval<T extends num?> {
  T min, max;

  Interval(this.min, this.max);

  bool get isEmpty {
    var localMin = min;
    var localMax = max;

    // No min or max means an open-ended interval.
    if (localMin == null || localMax == null) return false;
    return localMax <= localMin;
  }
}*/

// The Map index operator is nullable

void main() {
  /*// Using null safety, incorrectly:
var map = {'key': 'value'};
print(map['key'].length); // Error.*/
// Using null safety:
  var map = {'key': 'value'};
  print(map['key']!.length); // OK.
}
