import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        // color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
             Icon(
              Icons.supervisor_account_outlined,
              color: Colors.black,
            ),
             Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
             Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: SafeArea(
          child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'New Recipes'.toUpperCase(),
                ),
                Tab(
                  text: 'Favorites'.toUpperCase(),
                ),
                Tab(
                  text: 'Categories'.toUpperCase(),
                )
              ],
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.symmetric(horizontal: 24),
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(child: Text("New Recipes")),
                ),
                Container(
                  child: Center(child: Text("Favorites")),
                ),
                Container(
                  child: Center(child: Text("Categories")),
                )
              ]),
            )
          ],
        ),
      )),
    );
  }
}
