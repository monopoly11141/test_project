enum Path {
  home(route: "/"),
  setting(route: "/setting");

  const Path({required this.route});
  final String route;
}