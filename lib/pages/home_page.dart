import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/navigation/screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
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
                  Icons.settings,
                ),
                title: Text(
                    "S E T T I N G"
                ),
                onTap: () => {
                  context.go(SettingPageScreen().route)
                },
              )
              //
            ],
          )
      ),
    );
  }
}
