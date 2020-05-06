void main() {
  String printUserInfo(){
    return 'Hello world';
  }
  print(printUserInfo());
  
  String printUserInfo2(String name,[int age,String sex = '男']){
   return '$name $age 孙子哈  $sex';
  }
  print(printUserInfo2('陈真'));

  // 命名参数
  String printInfo(String name,{int age, String sex = '男'}){
    return '$name $age $sex';
  }
  print(printInfo('sunwukong',age:500,sex:'帅'));


  List list2 = [1,2,3,4,5,6,7];
  List newList = list2.map((v)=>v>2?v*2:v).toList();
  print(newList);

  // 方法递归
  double sum = 1;
  double fn(n){
    print('$n $sum');
    sum *= n;
    if(n <= 1)return sum;
    else return fn(n-1);
  }
  // print(fn(1000));
    // 闭包

    fn2(){
      int a = 123;
      return (){
        a++;
        print(a);
      };
    }

    var b = fn2();
    b();
    b();
    b();
    b();
    b();
    b();

    // 局部变量和全局变量的特点

    // 
}




/*


*/