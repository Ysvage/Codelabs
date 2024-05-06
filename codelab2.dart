// Codelab 2 Yasser Alezazandre Saldaña Barquero

// Interpolación de cadenas

String stringify(int x, int y) {
  return '$x $y';
}

/*
void main() {
  assert(stringify(2, 3) == '2 3',
      "Your stringify method returned '${stringify(2, 3)}' instead of '2 3'");
  print('Success!');
}*/

//Variables que aceptan null

String? name = 'Jane';
String? address;

/*
void main() {
  try {
    if (name == 'Jane' && address == null) {
      // verify that "name" is nullable
      name = null;
      print('Success!');
    } else {
      print('Not quite right, try again!');
    }
  } catch (e) {
    print('Exception: ${e.runtimeType}');
  }
}*/

//Operadores con reconocimiento de nulos

String? foo = 'a string';
String? bar; // = null

// Sustituye un operador que hace que se asigne 'a string' a baz.
String? baz = foo ?? bar;

void updateSomeVars() {
  // Sustituye un operador que hace que se asigne 'a string' a bar.
  bar ??= 'a string';
}

/*
void main() {
  try {
    updateSomeVars();
    
    if (foo != 'a string') {
      print('Looks like foo somehow ended up with the wrong value.');
    } else if (bar != 'a string') {
      print('Looks like bar ended up with the wrong value.');
    } else if (baz != 'a string') {
      print('Looks like baz ended up with the wrong value.');
    } else {
      print('Success!');
    }
  } catch (e) {
    print('Exception: ${e.runtimeType}.');
  }
  
}*/

// Acceso condicional a una propiedad

String? upperCaseIt(String? str) {
  return str?.toUpperCase();
}

/*
void main() {
  try {
    String? one = upperCaseIt(null);
    if (one != null) {
      print('Looks like you\'re not returning null for null inputs.');
    } else {
      print('Success when str is null!');
    }
  } catch (e) {
    print('Tried calling upperCaseIt(null) and got an exception: \n ${e.runtimeType}.');
  }
  
  try {
    String? two = upperCaseIt('a string');
    if (two == null) {
      print('Looks like you\'re returning null even when str has a value.');
    } else if (two != 'A STRING') {
      print('Tried upperCaseIt(\'a string\'), but didn\'t get \'A STRING\' in response.');
    } else {
      print('Success when str is not null!');
    }
  } catch (e) {
    print('Tried calling upperCaseIt(\'a string\') and got an exception: \n ${e.runtimeType}.');
  }
}*/

// Literales de colecciones

// Asigna una lista que contenga 'a', 'b' y 'c' en ese orden:
final aListOfStrings = ['a', 'b', 'c'];

// Asigne un conjunto que contenga 3, 4 y 5:
final aSetOfInts = {3, 4, 5};

// Asigne un mapa de String a int para que aMapOfStringsToInts['myKey'] devuelva 12:
final aMapOfStringsToInts = {'myKey': 12};

// Asigna una List<double> vacía:
final anEmptyListOfDouble = <double>[];

// Asigna un Set<String> vacío:
final anEmptySetOfString = <String>{};

// Asigna un mapa vacío de double a int:
final anEmptyMapOfDoublesToInts = <double, int>{};

/*
void main() {
  final errs = <String>[];

  if (aListOfStrings is! List<String>) {
    errs.add('aListOfStrings should have the type List<String>.');
  } else if (aListOfStrings.length != 3) {
    errs.add(
        'aListOfStrings has ${aListOfStrings.length} items in it, \n rather than the expected 3.');
  } else if (aListOfStrings[0] != 'a' ||
      aListOfStrings[1] != 'b' ||
      aListOfStrings[2] != 'c') {
    errs.add(
        'aListOfStrings doesn\'t contain the correct values (\'a\', \'b\', \'c\').');
  }

  if (aSetOfInts is! Set<int>) {
    errs.add('aSetOfInts should have the type Set<int>.');
  } else if (aSetOfInts.length != 3) {
    errs.add(
        'aSetOfInts has ${aSetOfInts.length} items in it, \n rather than the expected 3.');
  } else if (!aSetOfInts.contains(3) ||
      !aSetOfInts.contains(4) ||
      !aSetOfInts.contains(5)) {
    errs.add('aSetOfInts doesn\'t contain the correct values (3, 4, 5).');
  }

  if (aMapOfStringsToInts is! Map<String, int>) {
    errs.add('aMapOfStringsToInts should have the type Map<String, int>.');
  } else if (aMapOfStringsToInts['myKey'] != 12) {
    errs.add(
        'aMapOfStringsToInts doesn\'t contain the correct values (\'myKey\': 12).');
  }

  if (anEmptyListOfDouble is! List<double>) {
    errs.add('anEmptyListOfDouble should have the type List<double>.');
  } else if (anEmptyListOfDouble.isNotEmpty) {
    errs.add('anEmptyListOfDouble should be empty.');
  }

  if (anEmptySetOfString is! Set<String>) {
    errs.add('anEmptySetOfString should have the type Set<String>.');
  } else if (anEmptySetOfString.isNotEmpty) {
    errs.add('anEmptySetOfString should be empty.');
  }

  if (anEmptyMapOfDoublesToInts is! Map<double, int>) {
    errs.add(
        'anEmptyMapOfDoublesToInts should have the type Map<double, int>.');
  } else if (anEmptyMapOfDoublesToInts.isNotEmpty) {
    errs.add('anEmptyMapOfDoublesToInts should be empty.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }

  // ignore_for_file: unnecessary_type_check
}*/

// Sintaxis de flecha

/*class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Devuelve el producto de los valores anteriores:
  int get product => value1 * value2 * value3;

  // Suma 1 a value1:
  void incrementValue1() => value1++;

  // Devuelve una cadena que contenga cada elemento de la lista,
  // separado por comas (por ejemplo, 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
}*/

/*
void main() {
  final obj = MyClass();
  final errs = <String>[];

  try {
    final product = obj.product;

    if (product != 30) {
      errs.add(
          'The product property returned $product \n instead of the expected value (30).');
    }
  } catch (e) {
    print(
        'Tried to use MyClass.product, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

  try {
    obj.incrementValue1();

    if (obj.value1 != 3) {
      errs.add(
          'After calling incrementValue, value1 was ${obj.value1} \n instead of the expected value (3).');
    }
  } catch (e) {
    print(
        'Tried to use MyClass.incrementValue1, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

  try {
    final joined = obj.joinWithCommas(['one', 'two', 'three']);

    if (joined != 'one,two,three') {
      errs.add(
          'Tried calling joinWithCommas([\'one\', \'two\', \'three\']) \n and received $joined instead of the expected value (\'one,two,three\').');
    }
  } catch (e) {
    print(
        'Tried to use MyClass.joinWithCommas, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Cascadas

/*class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList.add(3)
    ..allDone();
}*/

/*
void main() {
  BigObject obj;

  try {
    obj = fillBigObject(BigObject());
  } catch (e) {
    print(
        'Caught an exception of type ${e.runtimeType} \n while running fillBigObject');
    return;
  }

  final errs = <String>[];

  if (obj.anInt != 1) {
    errs.add(
        'The value of anInt was ${obj.anInt} \n rather than the expected (1).');
  }

  if (obj.aString != 'String!') {
    errs.add(
        'The value of aString was \'${obj.aString}\' \n rather than the expected (\'String!\').');
  }

  if (obj.aList.length != 1) {
    errs.add(
        'The length of aList was ${obj.aList.length} \n rather than the expected value (1).');
  } else {
    if (obj.aList[0] != 3.0) {
      errs.add(
          'The value found in aList was ${obj.aList[0]} \n rather than the expected (3.0).');
    }
  }

  if (!obj._done) {
    errs.add('It looks like allDone() wasn\'t called.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Getters y setters

class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  // Añade un getter "total" aquí:
  double get total => _prices.fold(0, (e, t) => e + t);

// Añade un setter "prices" aquí:
  set prices(List<double> value) {
    if (value.any((p) => p < 0)) {
      throw InvalidPriceException();
    }

    _prices = value;
  }
}

/*
void main() {
  var foundException = false;

  try {
    final cart = ShoppingCart();
    cart.prices = [12.0, 12.0, -23.0];
  } on InvalidPriceException {
    foundException = true;
  } catch (e) {
    print(
        'Tried setting a negative price and received a ${e.runtimeType} \n instead of an InvalidPriceException.');
    return;
  }

  if (!foundException) {
    print(
        'Tried setting a negative price \n and didn\'t get an InvalidPriceException.');
    return;
  }

  final secondCart = ShoppingCart();

  try {
    secondCart.prices = [1.0, 2.0, 3.0];
  } catch (e) {
    print(
        'Tried setting prices with a valid list, \n but received an exception: ${e.runtimeType}.');
    return;
  }

  if (secondCart._prices.length != 3) {
    print(
        'Tried setting prices with a list of three values, \n but _prices ended up having length ${secondCart._prices.length}.');
    return;
  }

  if (secondCart._prices[0] != 1.0 ||
      secondCart._prices[1] != 2.0 ||
      secondCart._prices[2] != 3.0) {
    final vals = secondCart._prices.map((p) => p.toString()).join(', ');
    print(
        'Tried setting prices with a list of three values (1, 2, 3), \n but incorrect ones ended up in the price list ($vals) .');
    return;
  }

  var sum = 0.0;

  try {
    sum = secondCart.total;
  } catch (e) {
    print('Tried to get total, but received an exception: ${e.runtimeType}.');
    return;
  }

  if (sum != 6.0) {
    print(
        'After setting prices to (1, 2, 3), total returned $sum instead of 6.');
    return;
  }

  print('Success!');
}*/

// Parámetros posicionales opcionales

String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  var total = '$a';
  if (b != null) total = '$total,$b';
  if (c != null) total = '$total,$c';
  if (d != null) total = '$total,$d';
  if (e != null) total = '$total,$e';
  return total;
}

/*
void main() {
  final errs = <String>[];

  try {
    final value = joinWithCommas(1);

    if (value != '1') {
      errs.add(
          'Tried calling joinWithCommas(1) \n and got $value instead of the expected (\'1\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling joinWithCommas(1), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3);

    if (value != '1,2,3') {
      errs.add(
          'Tried calling joinWithCommas(1, 2, 3) \n and got $value instead of the expected (\'1,2,3\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling joinWithCommas(1, 2 ,3), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3, 4, 5);

    if (value != '1,2,3,4,5') {
      errs.add(
          'Tried calling joinWithCommas(1, 2, 3, 4, 5) \n and got $value instead of the expected (\'1,2,3,4,5\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling stringify(1, 2, 3, 4 ,5), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Parámetros con nombre

class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
    this.anInt = 1,
    this.aString = 'Old!',
    this.aDouble = 2.0,
  });

  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(
      anInt: newInt ?? this.anInt,
      aString: newString ?? this.aString,
      aDouble: newDouble ?? this.aDouble,
    );
  }
}

/*
void main() {
  final source = MyDataObject();
  final errs = <String>[];

  try {
    final copy = source.copyWith(newInt: 12, newString: 'New!', newDouble: 3.0);

    if (copy.anInt != 12) {
      errs.add(
          'Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s anInt was ${copy.anInt} rather than the expected value (12).');
    }

    if (copy.aString != 'New!') {
      errs.add(
          'Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s aString was ${copy.aString} rather than the expected value (\'New!\').');
    }

    if (copy.aDouble != 3) {
      errs.add(
          'Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s aDouble was ${copy.aDouble} rather than the expected value (3).');
    }
  } catch (e) {
    print(
        'Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0) \n and got an exception: ${e.runtimeType}');
  }

  try {
    final copy = source.copyWith();

    if (copy.anInt != 1) {
      errs.add(
          'Called copyWith(), and the new object\'s anInt was ${copy.anInt} \n rather than the expected value (1).');
    }

    if (copy.aString != 'Old!') {
      errs.add(
          'Called copyWith(), and the new object\'s aString was ${copy.aString} \n rather than the expected value (\'Old!\').');
    }

    if (copy.aDouble != 2) {
      errs.add(
          'Called copyWith(), and the new object\'s aDouble was ${copy.aDouble} \n rather than the expected value (2).');
    }
  } catch (e) {
    print('Called copyWith() and got an exception: ${e.runtimeType}');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

//Excepciones

typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

// Llama a logException para registrar una excepción y doneLogging cuando termine.
abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  try {
    untrustworthy();
  } on ExceptionWithMessage catch (e) {
    logger.logException(e.runtimeType, e.message);
  } on Exception {
    logger.logException(Exception);
  } finally {
    logger.doneLogging();
  }
}

// Tests de tu solución (¡No lo edites!):
class MyLogger extends Logger {
  Type? lastType;
  String lastMessage = '';
  bool done = false;

  void logException(Type t, [String? message]) {
    lastType = t;
    lastMessage = message ?? lastMessage;
  }

  void doneLogging() => done = true;
}
/*
void main() {
  final errs = <String>[];
  var logger = MyLogger();

  try {
    tryFunction(() => throw Exception(), logger);

    if ('${logger.lastType}' != 'Exception' &&
        '${logger.lastType}' != '_Exception') {
      errs.add(
          'Untrustworthy threw an Exception, but a different type was logged: \n ${logger.lastType}.');
    }

    if (logger.lastMessage != '') {
      errs.add(
          'Untrustworthy threw an Exception with no message, but a message \n was logged anyway: \'${logger.lastMessage}\'.');
    }

    if (!logger.done) {
      errs.add(
          'Untrustworthy threw an Exception, \n and doneLogging() wasn\'t called afterward.');
    }
  } catch (e) {
    print(
        'Untrustworthy threw an exception, and an exception of type \n ${e.runtimeType} was unhandled by tryFunction.');
  }

  logger = MyLogger();

  try {
    tryFunction(() => throw ExceptionWithMessage('Hey!'), logger);

    if (logger.lastType != ExceptionWithMessage) {
      errs.add(
          'Untrustworthy threw an ExceptionWithMessage(\'Hey!\'), but a \n different type was logged: ${logger.lastType}.');
    }

    if (logger.lastMessage != 'Hey!') {
      errs.add(
          'Untrustworthy threw an ExceptionWithMessage(\'Hey!\'), but a \n different message was logged: \'${logger.lastMessage}\'.');
    }

    if (!logger.done) {
      errs.add(
          'Untrustworthy threw an ExceptionWithMessage(\'Hey!\'), \n and doneLogging() wasn\'t called afterward.');
    }
  } catch (e) {
    print(
        'Untrustworthy threw an ExceptionWithMessage(\'Hey!\'), \n and an exception of type ${e.runtimeType} was unhandled by tryFunction.');
  }

  logger = MyLogger();
  bool caughtStringException = false;

  try {
    tryFunction(() => throw 'A String', logger);
  } on String {
    caughtStringException = true;
  }

  if (!caughtStringException) {
    errs.add(
        'Untrustworthy threw a string, and it was incorrectly handled inside tryFunction().');
  }

  logger = MyLogger();

  try {
    tryFunction(() {}, logger);

    if (logger.lastType != null) {
      errs.add(
          'Untrustworthy didn\'t throw an Exception, \n but one was logged anyway: ${logger.lastType}.');
    }

    if (logger.lastMessage != '') {
      errs.add(
          'Untrustworthy didn\'t throw an Exception with no message, \n but a message was logged anyway: \'${logger.lastMessage}\'.');
    }

    if (!logger.done) {
      errs.add(
          'Untrustworthy didn\'t throw an Exception, \n but doneLogging() wasn\'t called afterward.');
    }
  } catch (e) {
    print(
        'Untrustworthy didn\'t throw an exception, \n but an exception of type ${e.runtimeType} was unhandled by tryFunction anyway.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Usando this en un constructor

class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;

  MyClass(this.anInt, this.aString, this.aDouble);
}

/*
void main() {
  final errs = <String>[];

  try {
    final obj = MyClass(1, 'two', 3);

    if (obj.anInt != 1) {
      errs.add(
          'Called MyClass(1, \'two\', 3) and got an object with anInt of ${obj.anInt} \n instead of the expected value (1).');
    }

    if (obj.anInt != 1) {
      errs.add(
          'Called MyClass(1, \'two\', 3) and got an object with aString of \'${obj.aString}\' \n instead of the expected value (\'two\').');
    }

    if (obj.anInt != 1) {
      errs.add(
          'Called MyClass(1, \'two\', 3) and got an object with aDouble of ${obj.aDouble} \n instead of the expected value (3).');
    }
  } catch (e) {
    print(
        'Called MyClass(1, \'two\', 3) and got an exception \n of type ${e.runtimeType}.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Listas de inicializadores

class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  // TODO: Crea un constructor con una lista de inicializadores aquí:
  FirstTwoLetters(String word)
      : assert(word.length >= 2),
        letterOne = word[0],
        letterTwo = word[1];
}

/*
void main() {
  final errs = <String>[];

  try {
    final result = FirstTwoLetters('My String');

    if (result.letterOne != 'M') {
      errs.add(
          'Called FirstTwoLetters(\'My String\') and got an object with \n letterOne equal to \'${result.letterOne}\' instead of the expected value (\'M\').');
    }

    if (result.letterTwo != 'y') {
      errs.add(
          'Called FirstTwoLetters(\'My String\') and got an object with \n letterTwo equal to \'${result.letterTwo}\' instead of the expected value (\'y\').');
    }
  } catch (e) {
    errs.add(
        'Called FirstTwoLetters(\'My String\') and got an exception \n of type ${e.runtimeType}.');
  }

  bool caughtException = false;

  try {
    FirstTwoLetters('');
  } catch (e) {
    caughtException = true;
  }

  if (!caughtException) {
    errs.add(
        'Called FirstTwoLetters(\'\') and didn\'t get an exception \n from the failed assertion.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Constructores con nombre

/*class Color {
  int red;
  int green;
  int blue;

  Color(this.red, this.green, this.blue);*/

// TODO: Crea el constructor con nombre "Color.black" aquí:
/*Color.black()
      : red = 0,
        green = 0,
        blue = 0;
}*/

/*
void main() {
  final errs = <String>[];

  try {
    final result = Color.black();

    if (result.red != 0) {
      errs.add(
          'Called Color.black() and got a Color with red equal to \n ${result.red} instead of the expected value (0).');
    }

    if (result.green != 0) {
      errs.add(
          'Called Color.black() and got a Color with green equal to \n ${result.green} instead of the expected value (0).');
    }

    if (result.blue != 0) {
      errs.add(
          'Called Color.black() and got a Color with blue equal to \n ${result.blue} instead of the expected value (0).');
    }
  } catch (e) {
    print(
        'Called Color.black() and got an exception of type \n ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Constructores factory

class IntegerHolder {
  IntegerHolder();

  factory IntegerHolder.fromList(List<int> list) {
    if (list.length == 1) {
      return IntegerSingle(list[0]);
    } else if (list.length == 2) {
      return IntegerDouble(list[0], list[1]);
    } else if (list.length == 3) {
      return IntegerTriple(list[0], list[1], list[2]);
    } else {
      throw Error();
    }
  }
}

class IntegerSingle extends IntegerHolder {
  final int a;
  IntegerSingle(this.a);
}

class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;
  IntegerDouble(this.a, this.b);
}

class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;
  IntegerTriple(this.a, this.b, this.c);
}

/*
void main() {
  final errs = <String>[];

  bool _throwed = false;
  try {
    IntegerHolder.fromList([]);
  } on UnimplementedError {
    print('Test failed. Did you implement the method?');
    return;
  } on Error {
    _throwed = true;
  } catch (e) {
    print(
        'Called IntegerSingle.fromList([]) and got an exception of \n type ${e.runtimeType}.');
    return;
  }

  if (!_throwed) {
    errs.add('Called IntegerSingle.fromList([]) and didn\'t throw Error.');
  }

  try {
    final obj = IntegerHolder.fromList([1]);

    if (obj is! IntegerSingle) {
      errs.add(
          'Called IntegerHolder.fromList([1]) and got an object of type \n ${obj.runtimeType} instead of IntegerSingle.');
    } else {
      if (obj.a != 1) {
        errs.add(
            'Called IntegerHolder.fromList([1]) and got an IntegerSingle with \n  an \'a\' value of ${obj.a} instead of the expected (1).');
      }
    }
  } catch (e) {
    print(
        'Called IntegerHolder.fromList([]) and got an exception of \n type ${e.runtimeType}.');
    return;
  }

  try {
    final obj = IntegerHolder.fromList([1, 2]);

    if (obj is! IntegerDouble) {
      errs.add(
          'Called IntegerHolder.fromList([1, 2]) and got an object of type \n ${obj.runtimeType} instead of IntegerDouble.');
    } else {
      if (obj.a != 1) {
        errs.add(
            'Called IntegerHolder.fromList([1, 2]) and got an IntegerDouble \n with an \'a\' value of ${obj.a} instead of the expected (1).');
      }

      if (obj.b != 2) {
        errs.add(
            'Called IntegerHolder.fromList([1, 2]) and got an IntegerDouble \n with an \'b\' value of ${obj.b} instead of the expected (2).');
      }
    }
  } catch (e) {
    print(
        'Called IntegerHolder.fromList([1, 2]) and got an exception \n of type ${e.runtimeType}.');
    return;
  }

  try {
    final obj = IntegerHolder.fromList([1, 2, 3]);

    if (obj is! IntegerTriple) {
      errs.add(
          'Called IntegerHolder.fromList([1, 2, 3]) and got an object of type \n ${obj.runtimeType} instead of IntegerTriple.');
    } else {
      if (obj.a != 1) {
        errs.add(
            'Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple \n with an \'a\' value of ${obj.a} instead of the expected (1).');
      }

      if (obj.b != 2) {
        errs.add(
            'Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple \n with an \'a\' value of ${obj.b} instead of the expected (2).');
      }

      if (obj.c != 3) {
        errs.add(
            'Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple \n with an \'a\' value of ${obj.b} instead of the expected (2).');
      }
    }
  } catch (e) {
    print(
        'Called IntegerHolder.fromList([1, 2, 3]) and got an exception \n of type ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Redireccionando constructores

class Color {
  int red;
  int green;
  int blue;

  Color(this.red, this.green, this.blue);

  Color.black() : this(0, 0, 0);
}

/*
void main() {
  final errs = <String>[];

  try {
    final result = Color.black();

    if (result.red != 0) {
      errs.add(
          'Called Color.black() and got a Color with red equal to \n ${result.red} instead of the expected value (0).');
    }

    if (result.green != 0) {
      errs.add(
          'Called Color.black() and got a Color with green equal to \n ${result.green} instead of the expected value (0).');
    }

    if (result.blue != 0) {
      errs.add(
          'Called Color.black() and got a Color with blue equal to \n ${result.blue} instead of the expected value (0).');
    }
  } catch (e) {
    print(
        'Called Color.black() and got an exception of type ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}*/

// Constructores constantes

class Recipe {
  final List<String> ingredients;
  final int calories;
  final double milligramsOfSodium;

  const Recipe(this.ingredients, this.calories, this.milligramsOfSodium);
}

// Tests de tu solución (¡No lo edites!):
void main() {
  final errs = <String>[];

  try {
    const obj = Recipe(['1 egg', 'Pat of butter', 'Pinch salt'], 120, 200);

    if (obj.ingredients.length != 3) {
      errs.add(
          'Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with ingredient list of length ${obj.ingredients.length} rather than the expected length (3).');
    }

    if (obj.calories != 120) {
      errs.add(
          'Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with a calorie value of ${obj.calories} rather than the expected value (120).');
    }

    if (obj.milligramsOfSodium != 200) {
      errs.add(
          'Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with a milligramsOfSodium value of ${obj.milligramsOfSodium} rather than the expected value (200).');
    }
  } catch (e) {
    print(
        'Tried calling Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and received a null.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}
