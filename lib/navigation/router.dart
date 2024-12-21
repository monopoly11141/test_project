import 'package:go_router/go_router.dart';
import 'package:test_project/navigation/screen.dart';
import 'package:test_project/pages/setting_page.dart';

import '../pages/home_page.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: HomePageScreen().route,
  routes: [
    GoRoute(
      path: HomePageScreen().route,
      builder: (context, state) => HomePage(),
    ),
    //
    GoRoute(
      path: SettingPageScreen().route,
      builder: (context, state) => SettingPage()
    )

  ],
);