import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF212325),
        boxShadow:[ BoxShadow(
          blurRadius: 8,
          spreadRadius: 1,
          color: Colors.white.withOpacity(0.4),
        )]
      ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:const [
        Icon(Icons.home, color:Color(0xFFE57743), size: 30,),
        Icon(Icons.favorite_outlined, color: Colors.white, size: 30,),
        Icon(Icons.notifications, color: Colors.white, size: 30,),
        Icon(Icons.person, color: Colors.white, size: 30,),


      
      ],
    ),
    );
  }
}