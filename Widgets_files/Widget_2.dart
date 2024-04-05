import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  color: const Color.fromARGB(255, 198, 222, 199),
                  child: Row(
                   children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.green,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.check_circle, color: Colors.white, size: 30.0,),),
                      Column(
                        children: [
                          Text("Completed                ", style: TextStyle(color: Colors.green, fontSize: 20.0, fontWeight: FontWeight.bold ),),
                          Text("Order Completed 24 July 2024")
                        ],
                      ), SizedBox( width: 100.0,),
                      Icon(Icons.keyboard_arrow_right)
                   ],
                  ),
                ), 
                
              ],
            ), SizedBox(height: 10.0,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text("Order ID"),
                 Text("#53432792")
               ],
             ),
             Divider(color: Colors.greenAccent,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text("Order Date"),
                 Text("20 july 2024, 5:00 PM")
               ],
             ),
          ],
        ),
      ),
    );
  }
}