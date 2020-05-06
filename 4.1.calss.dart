// 加了一个下划线_ 表示这个属性或者方法是私有的，但是要把这个类放在单独一个文件中
// get {return v}
// set fn(v){}
class Animal {
  String name;
  int age;
  
  // 初始化列表
  


  Animal(this.name,this.age);

  

  void printInfo(){
    print("${this.name} ----- ${this.age}");
  }
  
  String getName(){
    return this.name;
  }
  int _getAge(){
    return this.age;
  }
  int getAget(){
    return this._getAge();
  }

}


class Rect {
  num height;
  num width;
  Rect():height=2,width = 10;

  // Rect(num this.height,num this.width);

  num area(){
    return this.height * this.width;
  }
  get getArea{
    print(this.height * this.width);
    return this.height * this.width;
  }
  set areaHeight(v){
    this.height = v;
  }
}




void main(){
  Animal an = Animal("🐒",10);
  an.printInfo();

  Rect re = Rect(10,12);
  re.getArea;

}

