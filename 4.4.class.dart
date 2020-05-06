/*
1. 抽象类通过abstract关键字来定义
2. Dart 中的抽象方法不能用abstract声明
3. 如果子类继承抽象类必须得实现里面的抽象方法
4. 如果把抽象类当作接口实现的话必须得实现抽象类李定义的所有属性和方法
5. 抽象类不能被实例化，只有继承他们的子类可以
extends 抽象类和implements的区别
1. 如果要复用抽象类里面的方法，并且要用抽象类方法约束子类的话我们就用extends继承抽象类
2.如果只是把抽象类当作标准的话我们就用implements实现抽象类
*/



// 定义Animal类 要求它的子类必须包含eat方法
// 抽象类没法被实例化

abstract class Animal {
  eat(); //抽象方法
  printInfo(){ // 我是一个抽象类里面的一个方法
    print('我是一个抽象类里面的一个方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('dog eating bone');
  }
}

void main() {
  Dog dog = new Dog();
  dog.eat();
  dog.printInfo();
}