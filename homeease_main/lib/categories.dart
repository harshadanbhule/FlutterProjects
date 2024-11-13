import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              
              children: [
                const SizedBox(
                  width: 10,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                                icon: const Icon(CupertinoIcons.arrow_left),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                    ],
                  ),
                ),
        const SizedBox(
          width: 10,
        ),
                SizedBox(
                                width: 325,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 12
                                  ),
                                  child: TextField(
                                                decoration: InputDecoration(
                                                  suffixIcon: const Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Image(image: AssetImage("assets/assets/home_page/image.png")),
                                                    ],
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  fillColor: const Color.fromRGBO(248, 248, 248, 1),
                                                  filled: true,
                                                  hintText: "Search Category",
                                                ),
                                              ),
                                ),
                              ),
              ],
            ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 20,
                                width: 4,
                                color: const Color.fromRGBO(202, 189, 255, 1),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "All Categories",
                                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                                SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(255, 188, 153, 1)),
                                    child: Image.asset(
                                        "assets/assets/home_page/services/Group 34246.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "AC Repair",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(202, 189, 255, 1)),
                                    child: Image.asset(
                                        "assets/assets/home_page/services/Group 34257.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Beauty",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(177, 229, 252, 1)),
                                    child: Image.asset(
                                        "assets/assets/home_page/services/Group 34258.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Appliance",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                           Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                                SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(181, 235, 205, 1)),
                                    child: Image.asset(
                                        "assets/assets/category/paint.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Painting",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(255, 216, 141, 1)),
                                    child: Image.asset(
                                        "assets/assets/category/clean.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Cleaning",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(203, 235, 164, 1)),
                                    child: Image.asset(
                                        "assets/assets/category/plumbing.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Plumbing",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                           Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                                SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(251, 155, 155, 1)),
                                    child: Image.asset(
                                        "assets/assets/category/electro.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Electronics",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(248, 176, 237, 1)),
                                    child: Image.asset(
                                        "assets/assets/category/shiftiing.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Shifting",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 103,
                              width: 103,
                              child: Column(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(175, 198, 255, 1)),
                                    child: Image.asset(
                                        "assets/assets/category/saloon.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Men's Salon",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            ],
                          )
          ],
        ),
      ),
    );
  }
}