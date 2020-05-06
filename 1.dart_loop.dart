void main() {
  print('111');
  // 打印
  for (int i = 0; i < 10; i++) {
    // print(i);
  }
  // 打印偶数
  for (int i = 0; i <= 50; i++) {
    if (i % 2 == 0) {
      // print('$i 是偶数');
    }
    ;
  }
  // 打印累加
  int count = 0;
  for (int i = 0; i <= 100; i++) {
    count += i;
  }
  print(count);

  // 打印数组 元素
  List<String> lis = const ["jae", 'jex', 'ext'];
  for (int i = 0; i < lis.length; i++) {
    print(lis[i]);
  }
  // 打印内部内容
  List<Map> lis2 = const [
    {"title": '新闻1'},
    {"title": '新闻2'},
    {"title": '新闻3'},
  ];
  for (int i = 0; i < lis2.length; i++) {
    print(lis2[i]['title']);
  }

  //
  int c = 1;
  while (c <= 10) {
    print(c);
    c++;
  }
  ;
  print(c);
  int d = 1;
  do {
    print(d);
    d++;
  } while (d <= 10);
  print(d);

  for (int i = 0; i < 10; i++) {
    if(i <= 4){
      print(i);
    }else{
      break;
    }
  };
  int f = 0;
  while (f <= 10) {
    print(f);
    f++;
    if(f == 5){
      break;
    }
  }

}

/*
1. ++ -- 自增自减和js一样

2. do while第一次必然执行  while 可能第一次不执行

3. break 跳出循环 continue 跳过当前循环，然后继续循环


*/
