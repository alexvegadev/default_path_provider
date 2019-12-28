import 'dart:async';

import 'package:flutter/services.dart';

class DefaultPathProvider {
  static const MethodChannel _channel =
      const MethodChannel('default_path_provider');

  ///Get android's default Download directory path
  static Future<String> get getDownloadDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getDownloadDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }

  ///Get android's default Alarm directory path
  static Future<String> get getAlarmsDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getAlarmsDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }

  ///Get android's default DCIM directory path
  static Future<String> get getDCIMDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getDCIMDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }

  ///Get android's default Documents directory path
  static Future<String> get getDocumentsDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getDocumentsDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }

  ///Get android's default Movies directory path
  static Future<String> get getMoviesDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getMoviesDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }

  ///Get android's default Music directory path
  static Future<String> get getMusicDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getMusicDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }

  ///Get android's default Notification directory path
  static Future<String> get getNotificationsDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getNotificationsDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }

  ///Get android's default Pictures directory path
  static Future<String> get getPicturesDirectoryPath async {
    final String path = await _channel.invokeMethod('getPicturesDirectoryPath');
    return path;
  }

  ///Get android's default Podcast directory path
  static Future<String> get getPodcastDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getPodcastDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }

  ///Get android's default Ringtones directory path
  static Future<String> get getRingtonesDirectoryPath async {
    String path = "Unknown";
    try {
      path = await _channel.invokeMethod('getRingtonesDirectoryPath');
    } catch (e) {
      print(e);
    }
    return path;
  }
}
