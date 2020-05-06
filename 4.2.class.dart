// 静态属性和静态方法
// 静态方法不可以访问非静态属性 非静态方法可以访问静态成员

class Person {
  static String name = "张三";
  String namea;
  Person(){
    this.namea = name;
  }
  void show(){
    print(name);
  }
  static void showStatic(){
    print(name);
  }
  set setName(v){
    this.namea = v;
  }
}

void main(){
  Person p = Person();
  p.show();
  Person.showStatic();
  if(p is Person){
    p.setName = '周杰伦';
  }
  // 将p 强制的转换成Person的实例
  // p as Person;

  // 及联操作
  p..show()
   ..setName = 'c'
   ..setName = 'd'
   ..setName = 'e';
  print(p);
}