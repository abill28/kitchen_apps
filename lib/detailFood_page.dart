// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kitchen_app/register_page.dart';

// ignore: use_key_in_widget_constructors
class DetailFoodPage extends StatefulWidget {
  @override
  State<DetailFoodPage> createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.10,
        centerTitle: true,
        // ignore: prefer_const_constructors
        leading: IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(Icons.arrow_back),
          // ignore: prefer_const_constructors
          color: Color(0xFF545D68),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: <Widget>[
          IconButton(
            // ignore: prefer_const_constructors
            icon: Icon(Icons.bookmark_border),
            // ignore: prefer_const_constructors
            color: Color(0xFF545D68),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Container(
                height: 300,
              ),
              Positioned(
                top: 16,
                left: (MediaQuery.of(context).size.width / 2 - 125),
                child: Hero(
                  tag: Image,
                  child: Container(
                    height: 250,
                    width: 260,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("../assets/images/nasigoreng.png"),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // Text(
                //   "Fried Rice Special",
                //   style: TextStyle(
                //       fontSize: 24,
                //       color: Colors.blueGrey,
                //       fontWeight: FontWeight.w400),  
                // ),
                SizedBox(height: 20,),
                Text("Nasi goreng pedas", style: TextStyle(color: Colors.teal,fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children:<Widget> [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Text("5.0",style: TextStyle(color: Colors.blueGrey,fontSize: 17),),
                          SizedBox(height: 10,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,)
                        ],
                      ),
                      // Row(
                      //   // ignore: prefer_const_literals_to_create_immutables
                      //   children:<Widget> [
                      //     Icon(Icons.timer,color: Colors.yellow,)
                      //   ],
                      // ),
                     
                  ],
                ),
                ElevatedButton( onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    }));
                  }, child: Text("COMMENT")),
                // ignore: avoid_unnecessary_containers
                // Container(
                //   // ignore: sized_box_for_whitespace
                //   child: Container(
                //     height: 400,
                //     width: 123,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(25),
                //       color: Colors.amber
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
