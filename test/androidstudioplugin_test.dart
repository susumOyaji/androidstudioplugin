import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:androidstudioplugin/androidstudioplugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('androidstudioplugin');

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
    expect(await Androidstudioplugin.platformVersion, '42');
  });
}
