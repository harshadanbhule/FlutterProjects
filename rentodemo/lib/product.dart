import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class Cycle {
  final String? asset;
  final List<String>? model;
  final int? price;

  const Cycle({this.asset, this.model, this.price});
}

class Accecories {
  final String? asset;
  final List<String>? model;
  final int? price;

  const Accecories({this.asset, this.model, this.price});
}

class _ProductState extends State<Product> {
  List cycleList = [
    const Cycle(
      asset: "assets/images/product/Cycle/combat.png",
      model: ["Combat"],
      price: 200,
    ),
    const Cycle(
      asset: "assets/images/product/Cycle/santa.png",
      model: ["Santa"],
      price: 300,
    ),
    const Cycle(
      asset: "assets/images/product/Cycle/viper.png",
      model: ["Viper"],
      price: 150,
    ),
  ];

  List accecoriesList = [
    const Accecories(
      asset: "assets/images/product/accecories/helmet.png",
      model: ["Black helmet"],
      price: 50,
    ),
    const Accecories(
      asset: "assets/images/product/accecories/gloves.png",
      model: ["Gloves"],
      price: 30,
    ),
    const Accecories(
      asset: "assets/images/product/accecories/jersey.png",
      model: ["Black jersey"],
      price: 70,
    ),
    const Accecories(
      asset: "assets/images/product/accecories/shoes.png",
      model: ["Shoes"],
      price: 50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
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
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
            child: Text(
              "Mountain Bikes",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(
            height: 267.47,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cycleList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 251.47,
                    width: 174.67,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1.0],
                          colors: [
                            Color.fromRGBO(215, 215, 215, 1),
                            Color.fromRGBO(0, 0, 0, 1),
                          ],
                          tileMode: TileMode.mirror,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.39))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 8, bottom: 8),
                          child: Text(
                            cycleList[index].model!.join(''),
                            style: GoogleFonts.urbanist(
                              fontSize: 14.87,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 5, bottom: 4),
                          child: Container(
                              height: 120,
                              width: 152,
                              child: Image.asset(cycleList[index].asset)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              Text(
                                "Available at \nBicycle \nStation",
                                style: GoogleFonts.urbanist(
                                  fontSize: 8.67,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  Text(
                                    '${cycleList[index].price} INR',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18.99,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  Text(
                                    "per day",
                                    style: GoogleFonts.poppins(
                                      fontSize: 7.43,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 4, bottom: 8),
                          child: Center(
                            child: SizedBox(
                              height: 24.78,
                              width: 151.13,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              "Accecories",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: accecoriesList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 130,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: [0.3, 1.0],
                              colors: [
                                Color.fromRGBO(0, 0, 0, 1),
                                Color.fromRGBO(0, 0, 0, 0.5),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 152,
                                child:
                                    Image.asset(accecoriesList[index].asset!),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    accecoriesList[index].model!.join(''),
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Bicycle",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                        color: const Color.fromRGBO(
                                            193, 193, 193, 1)),
                                  ),
                                  const SizedBox(height: 22),
                                  Text(
                                    '${accecoriesList[index].price} INR',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "per day",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: const Color.fromRGBO(
                                            193, 193, 193, 1)),
                                  )
                                ],
                              ),
                              const Spacer(),
                               SizedBox(
                                    height: 28,
                                    width: 105,
                                    child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    elevation: 10,
    foregroundColor: const Color.fromRGBO(221, 18, 18, 1),
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.96),
    ),
  ),
  onPressed: () {},
  child: Center(
    child: Text(
      "Add to cart",
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: 11,
        color: const Color.fromRGBO(221, 18, 18, 1),
      ),
    ),
  ),
  
),

                                  ),
                              const SizedBox(
                                width: 30,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
