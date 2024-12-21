sealed class Screen {
  String get route;
  set route(String route) => route;
}

class HomePageScreen extends Screen{
  @override
  String route = "/";
}

class SettingPageScreen extends Screen{
  @override
  String route = "/setting_page";
}
