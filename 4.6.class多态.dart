/*
Dart 中的多态：
   允许将子类类型的指针赋值给父类类型的指针，同一个函数调用有不同的执行效果

   子类的实例赋值给父类的引用

   多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类都有一个不同的表现


*/

abstract class Animal {
  eat(); //
}

class Dog extends Animal {
  @override
  eat() {
    print('eat dog');
  }
}

class Cat extends Animal {
  @override
  eat() {
   print('eat cat');
  }
}