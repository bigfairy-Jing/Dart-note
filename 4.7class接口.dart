/*
和Java一样，dart也有接口，但是和Java还是有区别的。
  首先，dart的接口没有interface关键字定义接口，而是通过类或抽象类
  都可以作为接口被实现，同样是使用implements(工具)关键字进行实现

  但是dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象中
  的属性方法全部需要覆写一遍
  而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现
  像java接口那样的方式一般会使用抽象类建议使用抽象类定义接口

*/

// 

abstract class Db {// 当作接口
  String url;
  add();
  save();
  delete();
}

class Mysql implements Db{
  Mysql(this.url);
  @override
  add() {
    // TODO: implement add\
    print("$url fa");
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

  @override
  String url;
  
}


void main(List<String> args) {
  Mysql mysql = new Mysql('123122321321');
  mysql.add();
}





