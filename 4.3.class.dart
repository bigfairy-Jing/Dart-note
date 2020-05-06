// 封装  继承 多态

/*
Dart 中的类的继承
 1.子类使用extends关键词来继承弗雷
 2.子类会继承父类里面可见的属性和方法 但是不会继承构造函数
 3. 子类能复写父类的方法getter 和 setter
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}

class Web extends Person {
  String sex;

  // 因为构造函数没办法继承，这里就相当于
  // 执行子类的构造函数，然后调用父类的方法，传入子类
  Web(String name, num age, String sex) : super(name, age) {
    this.sex = sex;
  }

  void run() {
    print('$name $age $sex');
  }

  @override
  void printInfo() {
    super.printInfo();
    print('$name 发的');

    // print('重写了父类的方法');
  }
}

void main() {
  Web w = Web("张三", 18, 'gong');
  w.printInfo();
  // 先找自己的方法，如果自己的方法没有就找父类的方法
  w.run();
}
