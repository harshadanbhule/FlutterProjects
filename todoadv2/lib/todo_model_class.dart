import 'dart:ui';

class ToDoModelClass {
  String title;
  String description;
  String date;
  String time;
  String category;
  Color selectedColor;
  bool isImportant;
  bool isCompleted;
  String todoStatus = "Not Completed";
  ToDoModelClass({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.selectedColor,
    required this.isImportant,
    required this.isCompleted,
    required this.todoStatus,
    required this.category,
  });
}