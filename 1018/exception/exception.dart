// dart 所有异常均是未检查异常，方法不必声明 本身可以抛出的异常，也不要求调用方捕获任何异常。
// dart 提供了 Exception 和 Error 类型，以 及许多预定义的了类型，开发者也可以自己定义异常。
// dart 可以抛出任何对象，不仅仅是 Exception 和 Error 两类

void throwException() {
  try {
    List<String> stringList = new List();
    stringList.add("value");
    print("${stringList[1]}");
  } on RangeError catch (e, s) {
    print("抛出了异常...");
    print('${s.toString()}');
    rethrow;
  } catch (e, s) {
    print("如果异常没有被 上方捕获，则会统一被 此处捕获");
    print('${s.toString()}');
  } finally {
    print("finally");
  }
}

void main() {
  throwException();
}
