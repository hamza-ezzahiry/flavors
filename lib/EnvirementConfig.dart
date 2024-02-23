class EnvironmentConfig {
  static String apiUrl = _getApiUrl();

  static String _getApiUrl() {
    switch (FlavorConfig.flavor) {
      case Flavor.TEST:
        return "https://api.test.com";
      case Flavor.PREPROD:
        return "https://api.preprod.com";
      case Flavor.PROD:
        return "https://api.prod.com";
      default:
        return "https://api.prod.com";
    }
  }
}
