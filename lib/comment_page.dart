import 'package:flutter/material.dart';
import 'package:kitchen_app/detailFood_page.dart';

class CommentPage extends StatefulWidget {
  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Text(
                "Comment Page",
                // ignore: prefer_const_constructors
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 15,
              ),
              // ignore: prefer_const_constructors
              Text(
                "Leave Your Comment Here!",
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Comment Here'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ElevatedButton(  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailFoodPage();
                    }));
                  }, child: Text("Send Comment")),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
