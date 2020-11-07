import 'dart:io';

class AdManager {

  static String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3179934820087088~9189172304";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
  static String get nativeAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3179934820087088/2202582814";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}