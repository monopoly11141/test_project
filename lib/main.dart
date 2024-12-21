import 'package:flutter/material.dart';

import 'navigation/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: FirstPage(),
    //   routes: {
    //     "/home_page" : (context) => HomePage(),
    //     "/second_page": (context) => SecondPage(),
    //     "/setting_page": (context) => SettingPage(),
    //   },
    // );
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class Studying extends StatelessWidget {
  const Studying({super.key});

  static const name = ["A", "B", "C", "D", "E"];

  void onGridTapped(int index) {
    print("${index + 1} clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
          title: Text("My App Bar"),
          backgroundColor: Colors.deepOrange[100],
          elevation: 5,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))]),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          //
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) =>
                  ListTile(title: Text(name[index])),
            ),
          ),
          //
          Expanded(
            child: GridView.builder(
              itemCount: 64,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => {onGridTapped(index)},
                child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.deepOrange,
                  margin: EdgeInsets.all(2),
                ),
              ),
            ),
          ),
          //
          Padding(padding: EdgeInsets.all(20)),
        ],
      ),
    );
  }
}
