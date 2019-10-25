// 枚举是一种特殊的类，通常用于表示固定数量的常量值
// 枚举使用 enum 关键字来进行定义
/**
 * 枚举的属性
 * index: 用于表示每个枚举常量的索引，从 0 开始
 * values：包含每个枚举的 List
 *
 * 注意：
 * 1.枚举不能子类化、混合或实现枚举
 * 2.不能实例化一个枚举
 */

enum Colors { red, green, blue }

void main() {
  print(Colors.red.index); // 0
  print(Colors.green.index); // 1
  print(Colors.blue.index); // 2

  print(Colors.values); // [Colors.red, Colors.green, Colors.blue]

  print(Colors.red); // Colors.red
}
