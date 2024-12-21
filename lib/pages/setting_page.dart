import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/navigation/screen.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
        leading: IconButton(
          onPressed: () => context.go(HomePageScreen().route),
          icon: Icon(Icons.navigate_before),
        ),
      ),
    );
  }
}
