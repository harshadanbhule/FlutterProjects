import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Home extends StatefulWidget {
  
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class Indoor {
  final String? asset;
  final List<String>? name;
  final int? price;
  

  const Indoor({this.asset, this.name, this.price, });
}
class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List cycleList = [
    const Indoor(
        asset: "assets/images/product/Cycle/large/Combatlarge.png",
        name: ["Combat"],
        price: 200,
       ),
    const Indoor(
        asset: "assets/images/product/Cycle/large/santa large.png",
        name: ["Santa"],
        price: 300,
        ),
    const Indoor(
        asset: "assets/images/product/Cycle/large/viperlarge.png",
        name: ["Viper"],
        price: 150,
        ),
  ];

  List<String> imagefirst = [
    "assets/png/seven.png",
    "assets/png/seven.png",
    "assets/png/seven.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset("assets/svg/fifth.svg"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    "Find your \nfavorite plants",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 16.1,
                              offset: Offset(0, 4),
                              spreadRadius: 0)
                        ]),
                    child: Center(
                        child: SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset("assets/svg/six.svg"))),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 130,
              child: PageView.builder(
                controller: _pageController,
                itemCount: imagefirst.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 108,
                      width: 310,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(204, 231, 185, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "30% OFF",
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "02-23 April",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          SizedBox(
                            height: 108,
                            width: 120,
                            child: Image.asset(imagefirst[index]))
                        ],
                      ),
                    ),
                  );
                },
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
              ),
            ),
            const SizedBox(height: 10,),
            DotsIndicator(
              dotsCount: imagefirst.length,
              position: _currentPage,
              decorator: const DotsDecorator(
                color: Color.fromRGBO(197, 214, 181, 1),
                activeColor: Color.fromRGBO(62, 102, 24, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                                      "Indoor",
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

