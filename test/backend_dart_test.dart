import 'package:statibackend_dart_client/backend_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Initialisation Tests', () {

    setUp(() {
      // Additional setup goes here.
    });

    test('Default Region Constructor should mark region as na1', () {
      final backend = Backend.defaultRegion("your-pub-key");
      expect(backend.region, "na1");
    });

    test('Dev region should mark region as dev', () {
      final backend = Backend("your-pub-key", "dev");
      expect(backend.region, "dev");
    });
  });
}
