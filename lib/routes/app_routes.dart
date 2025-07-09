enum AppRoutes {
  splashScreen('splash', '/splash'),
  homeScreen('home', '/'),
  chatScreen('chat', '/chat');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
}
