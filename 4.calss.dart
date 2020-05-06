
// 类的首字母大写
// Dart里面构造函数可以写多个
class Person {
  // 类的属性
  String name;
  int age;
  // 类的方法

  void getInfo(){
    print("${this.name} ${this.age}");
  }

  void setInfo(int age,[String name]){
    this.age = age;
    this.name = name ?? this.name;
  }

  // 默认构造函数 
  // Person(String name,int age){
  //   this.name = name ;
  //   this.age = age;
  //   print('这是构造函数的内容，这个方法在实例化的时候会触发');
  // }
  // 默认构造函数简写
  Person(String this.name,int this.age);
  // 命名构造函数可以写多个
  Person.now(String name, int age){
    this.name = name;
    this.age = age;
    print("我是命名构造函数");
  }
}



void main(){

 Person pe = Person("陈真",18);
 print(pe);
 print(pe.name);
 print(pe.age);
 Person pe1 = new Person.now("傻逼",17);
 print(pe1);


}