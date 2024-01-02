import 'package:backend_dart/backend_dart.dart';
import 'package:test/test.dart';

void main() {
  group('initialisation tests', () {
    final backend = Backend("your-pub-key", "local");

    setUp(() {
      // Additional setup goes here.
    });

    test('Tests whether region matches the input provided', () {
      expect(backend.region, "local");
    });
  });
}
