import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Widget_3 extends StatelessWidget {
  const Widget_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_right_alt, size: 30.0,), SizedBox(width: 30.0,),
            Container(
              width: 200,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 235, 235),
                border: Border.all(),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Text(" Search Product", style: TextStyle(fontSize: 15.0),),
            ), SizedBox(width: 30.0,),
            Icon(Icons.add_shopping_cart_outlined), SizedBox(width: 40.0,),
            Icon(Icons.notification_add)
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("../assets/Neseha.jpg"),
              )
            ),
            child: Row(
              children: [
                Container(
                  child: SizedBox (width: 100.0, height: 300 ,)
                ), 
                Row(
                  children: [
                    Icon(Icons.bookmarks_sharp, color: Colors.white, size: 48,),
                    Icon(Icons.switch_access_shortcut, color: Colors.white, size: 48,),
                    Icon(Icons.bookmarks_sharp, color: Colors.white, size: 48,),
                    Icon(Icons.people, color: Colors.white, size: 48,),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("8.6 dollar", style: TextStyle(fontSize: 25.0),),
              Icon(Icons.heart_broken, size: 48.0, color: Colors.grey,)
            ],
          ),
          Text("BARDI| Smart Ligth Bulb Lamp Bolham LED WIFI RGBWW 12W We hop eyou like out producrt", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),), SizedBox(height: 15.0,),
          Row(
            children: <Widget> [
              Icon(Icons.star, color: Colors.yellow,),
              Text("5.0 (354)          | 540 Sale                 | Brooklyn", style: TextStyle( fontSize: 18.0),),
              SizedBox(height: 15.0,),
            ],
          ), SizedBox(height: 20.0,),
          Column(
          children: [  Text("Variant                                                                                  ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                    Text("Size: XS                                                                                                             ", style: TextStyle(fontSize: 17.0),), 
                    Row( 
            children: [
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Text("XS", style: TextStyle(fontSize: 25.0),),
              ), SizedBox(width: 12.0,),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Text("XS", style: TextStyle(fontSize: 25.0),),
              ), SizedBox(width: 12.0,),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Text("XS", style: TextStyle(fontSize: 25.0),),
              ), SizedBox(width: 12.0,),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Text("XS", style: TextStyle(fontSize: 25.0),),
              ),
            ],
          )]
          ),
      

        ],
      ),
    );
  }
}