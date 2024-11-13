
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeease_main/login.dart';
import 'package:homeease_main/on_1.dart';
import 'package:homeease_main/on_2.dart';
import 'package:homeease_main/on_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingScreen extends StatefulWidget{
  const OnBoardingScreen({super.key});
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>{
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onLastPage = (index==2);
            });
          },
          children: [
            const page_1(),
            const page_2(),
            const page_3()
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmoothPageIndicator(controller: _controller, count: 3,effect: SlideEffect(
                dotColor: Color.fromRGBO(183,177,255,1),
                dotWidth: 10,
                dotHeight: 10,
                activeDotColor: Color.fromRGBO(103, 89,255,1)
              ),),
            
              
            ],
          )),
          Container(
            
            alignment: const Alignment(0,0.95),
            child:
            onLastPage 
            ?GestureDetector(
                  

                  child: Container(
                    height: 60,
                    width: 60,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(103,85,255,1)
                    ),
                    child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){
                      return const Login();
                    }));
                  },)
                  
                  :GestureDetector(
                  

                  child: Container(
                    height: 60,
                    width: 60,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(103,85,255,1)
                    ),
                    child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                  onTap: (){
                    _controller.nextPage(duration: const Duration(microseconds: 500), curve: Curves.bounceIn);
                  },),
          ),
          Container(
            alignment: const Alignment(0.95,-0.90),
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(181, 235,205, 1))
              ),
              onPressed: (){
                    _controller.jumpToPage(2);
                  }, child: Text("Skip",style: GoogleFonts.interTight(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal

                  ),)),
          )

        ]
      ),
    
    );
  }
}