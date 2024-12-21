import 'package:go_router/go_router.dart';
import 'package:test_project/core/ScaffoldWithNavBar.dart';

import '../feature_home/home_page.dart';
import '../feature_setting/setting_page.dart';
import 'path.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: Path.home.route,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ScaffoldWithNavBar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: Path.home.route,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: Path.setting.route,
              builder: (context, state) => SettingPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
