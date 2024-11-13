import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class page_1 extends StatelessWidget {
  const page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Container at the top-left corner
            Positioned(
              top: 1,
              left: 1,
              child: Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 202, 202, 1),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
                ),
              ),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 202, 202, 1),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
                ),
              ),
            ),
            // Center content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:40,),
                  
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 150),
                        child: Image(
                          image: AssetImage("assets/assets/Group 34489 (1).png"),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset(
                          "assets/assets/image.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 180),
                        child: Image(
                          image: AssetImage(
                            'assets/assets/Group 34487.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  Container(
                    alignment: Alignment(0,0.1),
                    height: 90,
                    width: 300,
                    child: Text(
                    
                    "Beauty parlour at your home",
                    textAlign: TextAlign.center ,
                    style: GoogleFonts.interTight(fontWeight: FontWeight.bold,fontSize: 32),),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width-30,
                    child: Text(textAlign: TextAlign.center,"Experience salon-quality beauty treatments in the comfort of your own home.",style: GoogleFonts.interTight(fontSize: 15,fontWeight: FontWeight.w400),),
                  ),
                  
                  SizedBox(height: 100),
                  
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
