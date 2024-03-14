// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

dynamic database;

//INSERT
Future<void> insertCard(ToDoModel obj) async {
  final localDB = await database;

  localDB.insert(
    'Card', //TABLE NAME
    obj.cardMap(), //TUPLE TO INSERT
    conflictAlgorithm:
        ConflictAlgorithm.replace, //what to do when conflict arrises
  );
}

//RETRIEVE
Future<List<ToDoModel>> retriveCard() async {
  final localDB = await database;
  List<Map<String, dynamic>> todomaplist = await localDB.query("Card");
  return List.generate(todomaplist.length, (i) {
    return ToDoModel(
        c_id: todomaplist[i]['c_id'],
        title: todomaplist[i]['title'],
        description: todomaplist[i]['description'],
        date: todomaplist[i]['date']);
  });
}

//DELETE
Future<void> deleteCard(ToDoModel obj) async {
  // print("DeleteCard -c_id ${obj.c_id}");

  final localDB = await database;
  await localDB.delete(
    "Card", //Table name
    where: "c_id=?", //parameter to select a record
    whereArgs: [
      obj.c_id,
    ], //value of selected parameter to uniquely identify record
  );
}

//update
Future<void> updateCard(ToDoModel obj) async {
  final localDB = await database;
  await localDB.update(
    "Card",
    obj.cardMap(),
    where: "c_id=?",
    whereArgs: [(obj.c_id)],
  );
}

//------------------------------------------------------------------------------
class ToDoModel {
  // ignore: non_constant_identifier_names
  int? c_id;
  String title;
  String description;
  String date;
  bool isChecked = false;
  //constructor
  ToDoModel({
    // ignore: non_constant_identifier_names
    this.c_id,
    required this.title,
    required this.description,
    required this.date,
  });
  //Map for SQFlite - stores data in key:val pair
  Map<String, dynamic> cardMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
    };
  }
}

class Advtodo extends StatefulWidget {
  const Advtodo({super.key});
  @override
  State createState() => _AdvtodoState();
}

class _AdvtodoState extends State<Advtodo> {
  // Function to Initialize database setup From Start
  void dbInit() async {
    database = await openDatabase(
      path.join(await getDatabasesPath(), "TodoDB3.db"),
      version: 2,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE Card(
        c_id INTEGER PRIMARY KEY,   
        title TEXT ,
        description TEXT , 
        date TEXT
       
      );
''');
      },
    );
    await fillCard();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    dbInit();
  }

  List<String> assetPaths = [
    "assets/images/Hexagonal Profile Photo2.png",
    "assets/images/Hexagonal Profile Photo4.png", // Add more asset paths as needed
    "assets/images/Place Image Here.png",
  ];

  //Controllers
  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  //keys
  final _formKey = GlobalKey<FormState>();

  List<ToDoModel> todoList = [];

  Future<void> fillCard() async {
    todoList = await retriveCard();
    setState(() {});
  }

  void submit(doedit, [ToDoModel? toDoModelObj]) async {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doedit) {
        setState(() {
          //   print("In Submitt");
          insertCard(
            ToDoModel(
              title: titleController.text,
              description: descriptionController.text,
              date: dateController.text,
            ),
          );

          // todoList.add(
          //   ToDoModelClass(
          //     title: titleController.text.trim(),
          //     description: descriptionController.text.trim(),
          //     date: dateController.text.trim(),
          //   ),
          // );
        });
      } else {
        await updateCard(ToDoModel(
          c_id: tochangec_id,
          title: titleController.text, //titleController.text,
          description: descriptionController.text,
          date: dateController.text,
        ));
        setState(() {
          // toDoModelObj!.date = dateController.text.trim();
          // toDoModelObj.title = titleController.text.trim();
          // toDoModelObj.description = descriptionController.text.trim();
        });
      }
      await fillCard();
      setState(() {});
    }

    clearController();
  }

  ///TO CLEAR ALL THE TEXT EDITING CONTROLLERS
  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  // ignore: non_constant_identifier_names
  int? tochangec_id = -1;

  void editTask(ToDoModel toDoModelObj) async {
    tochangec_id = toDoModelObj.c_id;
    titleController.text = toDoModelObj.title;
    descriptionController.text = toDoModelObj.description;
    dateController.text = toDoModelObj.date;

    showBottomSheet(true, toDoModelObj);
  }

  bool doedit = false;

  void showBottomSheet(doedit, [ToDoModel? toDoModelObj]) async {
    showModalBottomSheet(
        backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create To-Do",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(89, 57, 241, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        controller: titleController,
                        decoration: InputDecoration(
                          hintText: "Enter Title",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(89, 57, 241, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        controller: descriptionController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Enter Description",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(89, 57, 241, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        controller: dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "Enter Date",
                          suffixIcon: const Icon(Icons.date_range_rounded),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onTap: () async {
                          DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025),
                          );
                          String formatedDate =
                              DateFormat.yMMMd().format(pickeddate!);
                          setState(() {
                            dateController.text = formatedDate;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                      ),
                      onPressed: () {
                        submit(doedit, toDoModelObj);

                        Navigator.pop(context);
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 420,
        color: const Color.fromRGBO(111, 81, 255, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Text(
                "Good morning",
                style: GoogleFonts.quicksand(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 29,
              ),
              child: Text(
                "Harshad",
                style: GoogleFonts.quicksand(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Expanded(
              child: Container(
                width: 420,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "CREATE TO DO LIST",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 420,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40.0),
                          ),
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: todoList.length,
                          itemBuilder: (context, index) {
                            //print("Builder = ${todoList.length}");
                            return Slidable(
                              closeOnScroll: true,
                              endActionPane: ActionPane(
                                extentRatio: 0.2,
                                motion: const DrawerMotion(),
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            //updateCard(todoList[index]);
                                            editTask(todoList[index]);
                                            // retc_id(todoList[index]);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  89, 57, 241, 1),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            await deleteCard(todoList[index]);
                                            await fillCard();

                                            // print(todoList[index].title);
                                            setState(() {});
                                            //removeTasks(todoList[index]);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  89, 57, 241, 1),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              key: ValueKey(index),
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  bottom: 20,
                                  top: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: Border.all(
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.05),
                                      width: 0.5),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 20,
                                      color: Color.fromRGBO(0, 0, 0, 0.13),
                                    )
                                  ],
                                  borderRadius:
                                      const BorderRadius.all(Radius.zero),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(
                                                217, 217, 217, 1),
                                          ),
                                          child: Image.asset(assetPaths[
                                              index % assetPaths.length]),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 260,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                todoList[index].title,
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                todoList[index].description,
                                                style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                todoList[index].date,
                                                style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          activeColor: Colors.green,
                                          value: todoList[index].isChecked,
                                          onChanged: (val) {
                                            setState(() {
                                              todoList[index].isChecked = val!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          doedit = false;
          clearController();
          showBottomSheet(doedit);
        },
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 46,
        ),
      ),
    );
  }
}
