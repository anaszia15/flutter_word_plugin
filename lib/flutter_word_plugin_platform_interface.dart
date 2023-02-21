import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_word_plugin_method_channel.dart';

abstract class FlutterWordPluginPlatform extends PlatformInterface {
  /// Constructs a FlutterWordPluginPlatform.
  FlutterWordPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterWordPluginPlatform _instance = MethodChannelFlutterWordPlugin();

  /// The default instance of [FlutterWordPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterWordPlugin].
  static FlutterWordPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterWordPluginPlatform] when
  /// they register themselves.
  static set instance(FlutterWordPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
