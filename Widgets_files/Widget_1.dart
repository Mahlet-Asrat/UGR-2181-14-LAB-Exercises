import "package:flutter/material.dart";


class Widget1 extends StatelessWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0)
                ),
                child: Icon(Icons.question_mark_outlined, color: Colors.white,),
                ), SizedBox(width: 20.0,) ,
                Text("iJ Trackers"), SizedBox(width: 50.0,),
                Row(
                  children: [
                    Icon(Icons.notification_add),
                    Icon(Icons.settings)
                  ],
                )
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: 
      Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:Image( image: AssetImage("../assets/Ledet.jpg") ).image,), SizedBox(width: 10.0,),
                  Column(
                    children: [
                      Text("Robert Steven", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Icon(Icons.car_rental, color: Colors.blue,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Text("B 24455UJD | 70972532500", style: TextStyle( color: Colors.blue)))
                        ],
                      )
                    ],
                  ), SizedBox(width: 30.0,),
               Text("Logout", style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold), ) ],
              ), SizedBox(height: 10.0,),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(5.0),
                child: Center(child: Text("online |Battery: 90%", style: TextStyle(color: Colors.white, fontSize: 20.0),)),
              ), SizedBox( height: 15.0),
              Container(
                color: const Color.fromARGB(255, 230, 225, 225),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.location_disabled, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ], )
                  ], 
                ),
              ),  SizedBox( height: 10.0,),
              Container(
                color: const Color.fromARGB(255, 230, 225, 225),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.lock_clock, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ], )
                  ], 
                ),
              ), SizedBox( height: 10.0,),
              Container(
                color: const Color.fromARGB(255, 230, 225, 225),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ], )
                  ], 
                ),
              ), SizedBox( height: 10.0,),
              Container(
                color: const Color.fromARGB(255, 230, 225, 225),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ], )
                  ], 
                ),
              ), SizedBox( height: 10.0,),
              Container(
                color: const Color.fromARGB(255, 230, 225, 225),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flag_sharp, color: Colors.blue,),
                        Text("Map"),
                        Text("All Devices")
                      ], )
                  ], 
                ),
              ),
               ], 
              
              
        ), 
      )
    );
  }
}
