import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 47,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.notifications_outlined,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Welcome to New",
              style: GoogleFonts.jost(
                fontWeight: FontWeight.w300,
                fontSize: 26.98,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Educourse",
              style: GoogleFonts.jost(
                fontWeight: FontWeight.w700,
                fontSize: 37,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Form(
              child: SizedBox(
                width: 360,
                height: 57,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "     Enter your Keyword",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.5),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.5),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              width: 420,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Course For You",
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Container(
                            height: 242,
                            width: 190,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(197, 4, 98, 1),
                                    Color.fromRGBO(80, 3, 112, 1)
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Text(
                                    "UX Designer from Scratch.",
                                    style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: SvgPicture.asset("lib/assets/images/svg/7010826_3255307.svg")
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Container(
                            height: 242,
                            width: 190,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(0, 77, 228, 1),
                                    Color.fromRGBO(1, 47, 135, 1)
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Text(
                                    "Design Thinking The Beginner",
                                    style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: const Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: SvgPicture.asset("lib/assets/images/svg/2nd.svg")
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Text(
                      "Course By Category",
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Image.asset(
                                "lib/assets/images/cata/Traced Image.png"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "UI/UX",
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Image.asset(
                                "lib/assets/images/cata/Vector.png"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "VISUAL",
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Image.asset(
                                "lib/assets/images/cata/Vector5.png"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "ILLUSTRATON",
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Image.asset(
                                "lib/assets/images/cata/Traced Image55.png"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "PHOTO",
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
