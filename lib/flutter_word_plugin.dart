
import 'flutter_word_plugin_platform_interface.dart';

class FlutterWordPlugin {
  Future<String?> getPlatformVersion() {
    return FlutterWordPluginPlatform.instance.getPlatformVersion();
  }
}
