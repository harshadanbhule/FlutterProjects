import 'package:expense_manager/modelClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  const Category({super.key});
  @override
  State createState() => _CategoreyState();
}





class _CategoreyState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: expenseList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            width: 145,
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 2),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 8,
                    offset: Offset(1, 2)),
              ],
              borderRadius: BorderRadius.circular(
                45,
              ),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Container(
                          height: 74,
                          width: 74,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: expenseList[index].color),
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: SvgPicture.asset(
                              expenseList[index].assets,
                            ),
                          ),
                        ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    expenseList[index].title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: SizedBox(
        width: 166,
        height: 46,
        child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              
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
    );
  }
}
