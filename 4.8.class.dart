// // Dart 中一个类实现多个接口

// abstract class A {
//   String name;
//   printA();
// }
// abstract class B {
//   String name;
//   printB();
// }
// abstract class C {
//   String name;
//   printC();
// }

// class D implements A,B,C {
//   @override
//   String name;

//   @override
//   printA() {
//     // TODO: implement printA
//     return null;
//   }

//   @override
//   printB() {
//     // TODO: implement printB
//     return null;
//   }

//   @override
//   printC() {
//     // TODO: implement printC
//     return null;
//   }
  
// }

// mixins 
/*
mixins的中文意思就是混入，就是类中混入其他功能。
在Dart中可以使用mixins实现类似多继承的功能

因为mixins使用的条件，随着Dart的版本一直在变，这里将的是Dart2.x中使用mixins的条件
 1. 作为mixins的类只能继承自Object，不能继承其他类
 2.作为mixins的类不能有构造函数
 3.一个类可以mixins多个mixins类
 4.mixins绝不是继承，也不是接口，而是一种全新的特性
 5. 不管继承还是什么 后面的覆盖前面的
 6. mixins 的类型就是其超类的子类型
*/

class Person {
  String name;
  num age;
  Person(this.name,this.age);
  printInfo(){
    print("12332");
  }
}


class A {
  String info = 'this is a';
  void printA(){
    print('A');
  }
  void run(){
    print('A');
  }
}
class B {
  void printB(){
    print('B');
  }
  void run(){
    print('C');
  }
}

class C extends Person with A,B{
  C(String name, num age) : super(name, age);
}

void main(){
  C c = new C("ZHANGSAN",20);
  c.printA();
  c.printB();
  print(c.info);
  c.printInfo();
  print(c is A);
  print(c is B);
  print(c is C);
  // dart里面所有的类都继承Object
  print(c is Object);

}