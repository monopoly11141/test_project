import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48
                )
            ),
            //
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                "H O M E"
              ),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, "/home_page")
              },
            ),
            //
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text(
                  "S E T T I N G"
              ),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, "/setting_page")
              },
            )
            //
          ],
        )
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/second_page");
            },
            child: Text("Go to second Page")),
      ),
    );
  }
}
