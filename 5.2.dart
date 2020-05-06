class PrintClass<T>{
  List list = new List<T>();
  void add(T value){
    this.list.add(value);
  }
  void printInfo(){
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

main(List<String> args) {
  PrintClass p = new PrintClass<num>();
  p.add(1);
  p.add(1);
  p.add(1);
  p.add(1);
  p.add(1);
  p.printInfo();
}