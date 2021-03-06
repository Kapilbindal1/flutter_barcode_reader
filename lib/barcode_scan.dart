import 'dart:async';

import 'package:flutter/services.dart';

class BarcodeScanner {
  static const CameraAccessDenied = 'PERMISSION_NOT_GRANTED';
  static const MethodChannel _channel =
      const MethodChannel('com.apptreesoftware.barcode_scan');
  static Future<String> scan() async => await _channel.invokeMethod('scan');
  static Future<String> checkPermissionStatus() async => await _channel.invokeMethod('status');
  static Future<String> openSettings() async => await _channel.invokeMethod('permission');
}
