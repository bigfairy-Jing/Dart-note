class PrintCla<T> {
  List list = new List<T>();
  void add(T value) {
    this.list.add(value);
  }

  void printInfo() {
    for (int i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

main() {
  PrintCla pr = new PrintCla<int>();
  pr.add(1);
  pr.add(1);
  pr.add(1);
  pr.add(1);

  pr.printInfo();
}
