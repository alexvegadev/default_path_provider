import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:default_path_provider/default_path_provider.dart';

void main() {
  const MethodChannel channel = MethodChannel('default_path_provider');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DefaultPathProvider.platformVersion, '42');
  });
}
