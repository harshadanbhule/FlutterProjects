import 'package:expense_manager/categori.dart';
import 'package:expense_manager/graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:expense_manager/modelClass.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController cataController = TextEditingController();

  int _drawercolor = -1;

  void changedrawerbuttoncolor(int i) {
    setState(() {
      _drawercolor = i;
    });
  }

  Drawer drawermethod() {
    return Drawer(
      width: 235,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 35, left: 25),
            child: Text(
              "Expense manager",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: Text(
              "Saves all your Transactions",
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: drawerbutton.length,
              itemBuilder: (context, int i) {
                return GestureDetector(
                  onTap: () {
                    changedrawerbuttoncolor(i);
                    switch (i) {
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Piegraph()),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Category()),
                        );
                        break;
                      /*case 3:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondPage()),
                        );
                        break;*/
                      default:
                        break;
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20, right: 40),
                    height: 40,
                    width: 14,
                    decoration: BoxDecoration(
                      color: _drawercolor != i
                          ? Colors.white
                          : const Color.fromRGBO(14, 161, 125, 0.15),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: _drawercolor != i
                              ? Colors.white
                              : const Color.fromRGBO(14, 161, 125, 0.15),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12, right: 12),
                          child: Image.asset(drawerbutton[i].buttonicon),
                        ),
                        Text(
                          drawerbutton[i].buttonname,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: _drawercolor != i
                                ? Colors.black
                                : const Color.fromRGBO(14, 161, 125, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset("assets/svg/Search_alt.svg")),
        ],
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: expenseList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: expenseList[index].color),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              expenseList[index].assets,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    expenseList[index].title,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove_circle,
                                      color: Color.fromRGBO(246, 113, 49, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    expenseList[index].money,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                expenseList[index].description,
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          expenseList[index].date,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                        ),
                        Text(
                          " | ${expenseList[index].money}",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 0.5,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        width: 166,
        height: 46,
        child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              showBottomSheet();
            },
            child: Row(
              children: [
                const Spacer(),
                Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(14, 161, 125, 1),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Add Transaction ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(37, 37, 37, 1)),
                ),
                const Spacer(),
              ],
            )),
      ),
      drawer: drawermethod(),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Date",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(191, 189, 189, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purpleAccent),
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
                          if (pickeddate != null) {
                            String formatedDate = DateFormat.yMMMd().format(pickeddate);
                            setState(() {
                              dateController.text = formatedDate;
                            });
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Amount",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(191, 189, 189, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purpleAccent),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: cataController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(191, 189, 189, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purpleAccent),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: descriptionController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(191, 189, 189, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purpleAccent),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 40,
                  width: 123,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(67),
                      ),
                      backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Add",
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
          );
        });
  }
}



