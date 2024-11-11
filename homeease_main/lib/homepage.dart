import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        toolbarHeight: 72,
        leadingWidth: MediaQuery.sizeOf(context).width,
        leading: Expanded(
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/assets/home_page/icon.png")),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 121,
                height: 35,
                child: Column(
                  children: [
                    Text(
                      "CURRENT LOCATION ",
                      style: GoogleFonts.interTight(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                          color: const Color.fromRGBO(99, 106, 117, 1)),
                    ),
                    Text("41,Vadgoan Bk.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.interTight(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: const Color.fromRGBO(23, 43, 77, 1)))
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                  )),
              const SizedBox(
                width: 125,
              ),
              Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "BRONZE",
                    style: GoogleFonts.interTight(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(244, 191, 75, 1)),
                  ),
                  Text(
                    "0 POINTS",
                    style: GoogleFonts.interTight(
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(99, 106, 117, 1)),
                  )
                ],
              ),
              Image.asset("assets/assets/home_page/Badge.png")
            ],
          ),
        ),
      ),
      body: Center(
        child: Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                        children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  height: 220,
                  width: MediaQuery.sizeOf(context).width - 30,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HELLO harshad 👋",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              letterSpacing: 1.5,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(102, 108, 137, 1)),
                        ),
                        Text("What you are looking for today",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromRGBO(23, 43, 77, 1))),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 312,
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
                                            hintText: "Search what you need...",
                                          ),
                                        ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              ///
              ///first_scroll
              ///
              ///
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  height: 220,
                  width: MediaQuery.sizeOf(context).width - 30,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 160,
                            width: 289,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(224, 255, 236, 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Offer AC service",
                                          style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700)),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Icon(
                                        Icons.info_rounded,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Get 25%",
                                    style: GoogleFonts.interTight(
                                        fontSize: 48,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 8, right: 5, bottom: 5),
                                    height: 30,
                                    width: 106,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Grab Offer",
                                          style: GoogleFonts.interTight(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 67, 208, 126)),
                                        ),
                                        const SizedBox(width: 8),
                                        const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 14,
                                            color:
                                                Color.fromARGB(255, 67, 208, 126))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        //GROUP2
                        //
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 160,
                            width: 289,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromARGB(255, 224, 226, 255),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, right: 15, left: 10, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Offer",
                                          style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700)),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Icon(
                                        Icons.info_rounded,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Get 15%",
                                    style: GoogleFonts.interTight(
                                        fontSize: 48,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 8, right: 5, bottom: 5),
                                    height: 30,
                                    width: 106,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Grab Offer",
                                          style: GoogleFonts.interTight(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 67, 91, 208)),
                                        ),
                                        const SizedBox(width: 8),
                                        const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 14,
                                            color:
                                                Color.fromARGB(255, 67, 91, 208))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        //GROUP3
                        //
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 160,
                            width: 289,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromARGB(255, 255, 242, 224),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, right: 15, left: 10, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Offer",
                                          style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700)),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Icon(
                                        Icons.info_rounded,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Get 15%",
                                    style: GoogleFonts.interTight(
                                        fontSize: 48,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 8, right: 5, bottom: 5),
                                    height: 30,
                                    width: 106,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Grab Offer",
                                          style: GoogleFonts.interTight(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 234, 184, 91)),
                                        ),
                                        const SizedBox(width: 8),
                                        const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 14,
                                            color:
                                                Color.fromARGB(255, 234, 184, 91))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
             Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      height: 120,
                      width: MediaQuery.sizeOf(context).width - 30,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            top: 5, left: 20, right: 5, bottom: 5),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 88,
                              width: 61,
                              child: Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(255, 188, 153, 1)),
                                    child: Image.asset(
                                        "assets/assets/home_page/services/Group 34246.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "AC Repair",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color:
                                            const Color.fromRGBO(65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 88,
                              width: 61,
                              child: Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(202, 189, 255, 1)),
                                    child: Image.asset(
                                        "assets/assets/home_page/services/Group 34257.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Beauty",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color:
                                            const Color.fromRGBO(65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 88,
                              width: 61,
                              child: Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(177, 229, 252, 1)),
                                    child: Image.asset(
                                        "assets/assets/home_page/services/Group 34258.png"),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Appliance",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color:
                                            const Color.fromRGBO(65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 88,
                              width: 61,
                              child: Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(223, 245, 255, 1)),
                                    child: const Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "See All",
                                    style: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color:
                                            const Color.fromRGBO(65, 64, 93, 1)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      height: 275,
                      width: MediaQuery.sizeOf(context).width - 30,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 6,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(202,189,255,1),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                ),
                                SizedBox(width: 10),
                                Text("Cleaning Services",
                                style: GoogleFonts.interTight(fontWeight: FontWeight.w700,fontSize: 20),),
                                SizedBox(width: 80),
                                Container(
                                  height: 35,
                                  width: 83,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromRGBO(239, 239,239, 1),
                                    border: Border.all(width: 0.5)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Row(
                                      
                                      children: [
                                      
                                        Text("See All",
                                        style: GoogleFonts.interTight(fontSize: 12,fontWeight: FontWeight.w600),),
                                        SizedBox(width: 5,),
                                        Icon(Icons.arrow_forward_ios_outlined,size: 13,)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    height: 190,
                                    width: 140,
                                    
                                    child: Column(
                                      children: [
                                        Container(
                                          height:140 ,
                                          width: 154,
                                          child: Image(image: AssetImage("assets/assets/home_page/services/Mask Group_1.png")),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("Home Cleaning",
                                        style: GoogleFonts.interTight(fontWeight: FontWeight.w600,fontSize: 15),)
                                      ],
                                    
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 190,
                                    width: 140,
                                    
                                    child: Column(
                                      children: [
                                        Container(
                                          height:140 ,
                                          width: 154,
                                          child: Image(image: AssetImage("assets/assets/home_page/services/Group 34037.png")),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("Carpet Cleaning",
                                        style: GoogleFonts.interTight(fontWeight: FontWeight.w600,fontSize: 15),)
                                      ],
                                    
                                    ),
                                    
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 190,
                                    width: 140,
                                    
                                    child: Column(
                                      children: [
                                        Container(
                                          height:140 ,
                                          width: 154,
                                          child: Image(image: AssetImage("assets/assets/home_page/services/Mask Group.png")),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("AC Cleaning",
                                        style: GoogleFonts.interTight(fontWeight: FontWeight.w600,fontSize: 15),)
                                      ],
                                    
                                    ),
                                    
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )))
                        ],
                      ),
            )),
      ),
    );
  }
}
