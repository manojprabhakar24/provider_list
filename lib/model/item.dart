

class Item{
  String item;
  bool completed;
  Item({required this.item,
    required this.completed});


  void toggle(){
    completed=!completed;
  }
}