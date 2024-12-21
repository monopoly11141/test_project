import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../navigation/path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),
            //
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text("S E T T I N G"),
              onTap: () => {
                Navigator.pop(context),
                context.go(Path.setting.route),
              },
            )
            //
          ],
        ),
      ),
    );
  }
}
