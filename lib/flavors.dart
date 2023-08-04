// Refer once

enum Flavor {
  PROD,
  DEV,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'Nukleus Hive';
      case Flavor.DEV:
        return 'Nukleus Hive Dev';
      default:
        return 'title';
    }
  }
}
