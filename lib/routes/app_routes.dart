enum AppRoutes {
  splashScreen('splash', '/splash'),
  home('home', '/');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
}
