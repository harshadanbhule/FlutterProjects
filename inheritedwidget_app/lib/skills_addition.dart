import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shared_data.dart';
import 'show_listed_skills.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

//   @override
//   State<Skills> createState() => _Skills();
// }

// class _Skills extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    SharedData sharedData = SharedData.of(context);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Container(
                height:200,
                width: 300,
                color: Color.fromARGB(255, 220, 197, 156),
                child: Column(
                  children: [
                     const Spacer(),
                    Text("login id : ${sharedData.loginId}"),
                Text("login name : ${sharedData.username}"),
              Text("login email : ${sharedData.email}"),
               const Spacer(),
                  ],
                ),
              ),

              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                        onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ShowListedSkills()));
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
            ],
          ),
        ],
      ),
    );
  }
}
