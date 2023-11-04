import 'package:coffeeshop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: const EdgeInsets.only(top: 100, bottom: 40),
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(
                  "images/bg.png",
                ),
                fit: BoxFit.cover,
                opacity: 0.7 // بيتحكم في الاضائة
                ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Coffee Shop",
                  style:
                      GoogleFonts.pacifico(fontSize: 50, color: Colors.white)),
              Column(
                children: [
                  Text(
                    'Felling low ? take a Sip of coffee',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w700, letterSpacing: 1),
                  ),
                 const  SizedBox(
                    height: 80,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute( builder: (context)=> HomePage()));
                    },
                    child: Container(
                       child: Text("Get Start",style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold, letterSpacing: 1),),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      decoration: BoxDecoration(
                        color: Color(0xFFE57743),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
