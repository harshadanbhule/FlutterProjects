import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CycleDetailsScreen extends StatefulWidget {
  final String asset;
  final String model;
  final int price;
  final String discrption;

  const CycleDetailsScreen({
    required this.asset,
    required this.model,
    required this.price,
    required this.discrption,
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CycleDetailsScreenState createState() => _CycleDetailsScreenState();
}

class _CycleDetailsScreenState extends State<CycleDetailsScreen> {
  bool _isPostLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(left: 7, top: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(CupertinoIcons.arrow_left),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.shopping_cart),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.person),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 440,
                height: 391,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color.fromRGBO(2, 2, 2, 1),
                      Color.fromRGBO(40, 39, 39, 1),
                    ],
                    center: Alignment.center,
                    radius: 0.7,
                    stops: [0.4, 1.0],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromRGBO(221, 18, 18, 1),
                          ),
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromRGBO(221, 18, 18, 1),
                          ),
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromRGBO(221, 18, 18, 1),
                          ),
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromRGBO(255, 255, 255, 0.425),
                          ),
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromRGBO(255, 255, 255, 0.425),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _isPostLiked = !_isPostLiked;
                                });
                              },
                              icon: _isPostLiked
                                  ? const Icon(
                                      Icons.favorite_rounded,
                                      color: Color.fromRGBO(221, 18, 18, 1),
                                    )
                                  : const Icon(
                                      Icons.favorite_rounded,
                                      color: Color.fromRGBO(255, 255, 255, 0.425),
                                    )),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 234,
                        width: 357,
                        child: Image.asset(widget.asset)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 35,
                        ),
                        Text(
                          widget.model,
                          style: GoogleFonts.urbanist(
                            fontSize: 14.87,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '${widget.price} INR',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'per day',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontSize: 7.43,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 120,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 35,
                        ),
                        Text(
                          "Available at \nBicycle \nStation",
                          style: GoogleFonts.urbanist(
                            fontSize: 8.67,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 24.78,
                          width: 151.13,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                backgroundColor:
                                    const Color.fromRGBO(221, 18, 18, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.96),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    "Book your Cycle",
                                    style: GoogleFonts.urbanist(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9.91,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                        ),
                        const SizedBox(
                          width: 83,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "DESCRIPTION",
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Container(
                              height: 3,
                              width: 101,
                              color: const Color.fromRGBO(221, 18, 18, 1),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              "Be unique with your choice of ride.",
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              widget.discrption,
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
