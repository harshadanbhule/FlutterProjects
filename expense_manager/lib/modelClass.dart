import 'dart:ui';

class Drawercolor {
  final String buttonicon;
  final String buttonname;
  const Drawercolor({required this.buttonicon, required this.buttonname});
}

List drawerbutton = const [
  Drawercolor(buttonicon: "assets/trash.png", buttonname: "Transaction"),
  Drawercolor(buttonicon: "assets/graph.png", buttonname: "Graphs"),
  Drawercolor(buttonicon: "assets/category.png", buttonname: "Category "),
  Drawercolor(buttonicon: "assets/Transaction.png", buttonname: "Trash "),
  Drawercolor(buttonicon: "assets/about.png", buttonname: "About us"),
];

class ModelClass {
  final String title;
  final String description;
  final String date;
  final String time;
  final String money;
  final Color color;
  final String assets;

  ModelClass({
    required this.title,
    required this.description,
    required this.date,
    required this.money,
    required this.time,
    required this.color,
    required this.assets,
  });
}
List<ModelClass> expenseList = [
    ModelClass(
        title: "Medicine",
        description: "Lorem Ipsum is simply dummy text of the ",
        date: "3 June",
        time: "11:50 AM",
        money: "500",
        color: const Color.fromRGBO(0, 174, 91, 0.7),
        assets: "assets/svg/1.svg"),
    ModelClass(
        title: "Food",
        description: "Lorem Ipsum is simply dummy text of the ",
        date: "3 June",
        time: "11:50 AM",
        money: "365",
        color: const Color.fromRGBO(214, 3, 3, 0.7),
        assets: "assets/svg/2.svg"),
    ModelClass(
        title: "Shopping",
        description: "Lorem Ipsum is simply dummy text of the ",
        date: "3 June",
        time: "11:50 AM",
        money: "800",
        color: const Color.fromRGBO(241, 38, 197, 0.7),
        assets: "assets/svg/3.svg"),
    ModelClass(
        title: "Fuel",
        description: "Lorem Ipsum is simply dummy text of the ",
        date: "3 June",
        time: "11:50 AM",
        money: "200",
        color: const Color.fromRGBO(0, 148, 255, 0.7),
        assets: "assets/svg/4.svg"),
    ModelClass(
        title: "Entertainment",
        description: "Lorem Ipsum is simply dummy text of the ",
        date: "3 June",
        time: "11:50 AM",
        money: "500",
        color: const Color.fromRGBO(100, 62, 255, 0.7),
        assets: "assets/svg/5.svg"),
  ];