import 'package:flutter/material.dart';

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "Send Comment",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
                ),
              ),
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
