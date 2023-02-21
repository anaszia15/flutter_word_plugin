import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_word_plugin_platform_interface.dart';

/// An implementation of [FlutterWordPluginPlatform] that uses method channels.
class MethodChannelFlutterWordPlugin extends FlutterWordPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_word_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
