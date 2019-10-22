void main() {
  // list 使用时的泛型写法
  // 1. 创建list 方式
  var names1 = ['why', 'kobe', 'james', 111];
  print(names1); // [why, kobe, james, 111]

  // 2. 限制类型
  var names2 = <String>['why', 'kobe', 'james'];
  List<String> names3 = ['why', 'kobe', 'james'];
  print(names2); // [why, kobe, james]
  print(names3); // [why, kobe, james]

  // Map 使用时的泛型写法
  var infos1 = {1: 'one', 'name': 'why', 'age': 18};
  print(infos1.runtimeType); // _InternalLinkedHashMap<Object, Object>

  // 对类型进行显示
  Map<String, String> infos2 = {'name': 'why', 'age': '18'};
  var infos3 = <String, String>{'name': 'why', 'age': '20'};
  print(infos2); // {name: why, age: 18}
  print(infos3); // {name: why, age: 20}
}
