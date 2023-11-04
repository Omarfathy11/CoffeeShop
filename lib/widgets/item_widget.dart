import 'package:coffeeshop/screens/item_screen_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});

  List img = ['Latte', 'Espresso', 'Black Coffee', 'Cold Coffee'];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const  EdgeInsets.symmetric(horizontal: 13, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF212325),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]),
            child: Column(children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemScreenDetails(img[i])));
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    "images/${img[i]}.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        img[i],
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                     const Text(
                        "Best seller",
                        style:  TextStyle(
                            fontSize: 15,
                            color: Colors.white60),
                      ),
                    ],
                  ),
                  
                  
                ),
              ),
              Padding(
                padding:const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Text("\$30",style: TextStyle(fontSize: 16, color: Colors.green),),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFE57734),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: const Icon(
                        CupertinoIcons.add,
                        size: 20,
                      ),
                    )
                  ],
                ),
              )
            ]),
          )
      ],
    );
  }
}
