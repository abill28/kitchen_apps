import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List androidVers = [
    {
      "name": " Indonesian Fried Rice",
      "desc": "Best Seller"
    },
     {
      "name": "Indonesian Fried Rice 2",
      "desc": "Best Seller"
    },
     {
      "name": "Indonesian Fried Rice 3",
      "desc": "Best Seller"
    },
     {
      "name": "Indonesian Fried Rice 4",
      "desc": "Best Seller"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Food") ,
      ),
      body: ListView.separated(
        itemCount: androidVers.length,
        itemBuilder: (context, index) {
          return dataList(androidVers[index]["name"],androidVers[index]["desc"]);
        },
        separatorBuilder: (context, index){
          return Divider();
        }
      )
    );
  }
}
Widget dataList(String textData, String descData){
  return ListTile(
   leading: CircleAvatar(
     backgroundColor: Colors.black87,
     child: Icon(Icons.restaurant_menu_outlined),
   ),
   title: Text(textData),
   subtitle: Text(descData),
   trailing: Icon(Icons.keyboard_arrow_right),
  );
}
