import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'shared_data.dart';

class ShowListedSkills extends StatefulWidget {
  const ShowListedSkills({super.key});

  @override
  State<ShowListedSkills> createState() => _ShowListedSkills();
}

List<String> skills = [];

class _ShowListedSkills extends State<ShowListedSkills> {
  List<String> skills = [];
  TextEditingController skill = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SharedData sharedData = SharedData.of(context);
    skills = sharedData.skills;

    return Scaffold(
        body: Column(
               
              children: [
                const SizedBox(
                  height: 90,
                ),
        Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 10),
                    height: 50,
                    width: 320,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: skill,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Skill",
                       
                        hintStyle: GoogleFonts.poppins(
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 82, 82, 80),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: const Color.fromARGB(255, 255, 176, 30),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        )
                      ),
                    ),
                  ),
        const SizedBox(
                height: 40,
              ),
              GestureDetector(
                        onTap: () {
              if (skill.text.isNotEmpty) {
                skills.add(skill.text);
              }
              setState(() {});
            },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20, top: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Color.fromARGB(255, 255, 176, 30),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          height: 50,
                          width: 320,
                          child: Center(
                            child: Text(
                              "Add Skill",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
        Expanded(
            child: ListView.builder(
                      itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 4,
                bottom: 4,
                right: 100,
                left: 100
              ),
              child: Container(
                color: const Color.fromARGB(255, 220, 197, 156),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 100),
                  height: 50,
                  width: 300,
                  child: Text(skills[index])),
            );
                      },
                      itemCount: skills.length,
                    )),
              ],
            ));
  }
}
