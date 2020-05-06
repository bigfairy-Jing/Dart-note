void main() {
  List<String> list1 = ['1', '2'];
  // List 属性
  print(list1);
  list1.add('3');
  print(list1);
  print(list1.length);
  print(list1.isEmpty);
  print(list1.isNotEmpty);
  print(list1.reversed); // 反转 (3, 2, 1)
  print(list1);
  List<String> list2 = list1.reversed.toList();
  print(list2);

  // List方法
  list1.add("周杰伦");
  print(list1);
  list1.addAll(["周杰伦", "林俊杰", "许嵩"]); // 拼接数组，然后联合数组赋值给list1
  print(list1);
  print(list1.indexOf("周杰伦")); // 查找到返回第一个索引
  list1.remove("周杰伦"); // 删除第一个找到的
  print(list1);
  list1.removeAt(3);
  print(list1);
  list1.fillRange(1, 2, "周杰伦"); // 类似js splice
  print(list1);
  list1.insert(1, '任贤齐');
  print(list1);
  list1.insertAll(1, ['任贤齐', '李云龙']);
  print(list1);
  final String str = list1.join(",");
  print(str is String);
  print(str);
  final List<String> list3 = str.split(",");
  print(list3);
  print(list3 is List);

  // Set
  Set<String> s = new Set();
  s.add("陈胜");
  s.add("吴广");
  s.add("刘邦");
  s.add("项羽");
  s.add("陈胜");
  print(s);
  print(s.toList());

  // 集合去重
  const mut = ["陈胜", "陈胜", "陈胜", "陈胜", "陈胜", "陈胜", "陈胜"];
  var b = new Set();
  b.addAll(mut);
  print(b);
  print(b.toList());

  // Map 映射 属性
  Map<String, String> map1 = {"name": "张三", "age": '18'};
  map1['n'] = '560';
  print(map1);

  Map person = {
    "name1": "张三",
    "name2": "李四",
    "name3": "王武",
    "name4": "六二",
  };
  print(person);
  print(person.keys);
  print(person.keys.toList());
  print(person.values.toList());
  // Map 方法
  // Map只有AddAll方法增加多个属性
  person.remove('name1');

  person.containsKey('name2');
  person.containsValue('六二');

  mut.forEach((value) {
    print(value);
  });

  List myList = [1, 2, 3, 4];

  List myList2 = myList.map((item) {
    return item * 2;
  }).toList();
  print(myList2);

  List myList3 = myList.where((v)=>v>2).toList();
  print(myList3); // any 只要集合里面有满足条件就返回true every 每一个满足条件返回true

  Set<int> x = new Set();
  x.addAll([1,2,3,4,5]);

  Map<String,int> pe = {
    'f':1,
  };
  pe.forEach((key,value){
    print('$key $value');
  });
}

/*







*/
