import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_word_plugin/flutter_word_plugin.dart';
import 'package:flutter_word_plugin/flutter_word_plugin_platform_interface.dart';
import 'package:flutter_word_plugin/flutter_word_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterWordPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterWordPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterWordPluginPlatform initialPlatform = FlutterWordPluginPlatform.instance;

  test('$MethodChannelFlutterWordPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterWordPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterWordPlugin flutterWordPlugin = FlutterWordPlugin();
    MockFlutterWordPluginPlatform fakePlatform = MockFlutterWordPluginPlatform();
    FlutterWordPluginPlatform.instance = fakePlatform;

    expect(await flutterWordPlugin.getPlatformVersion(), '42');
  });
}
