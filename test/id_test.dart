import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:test/test.dart';

void main() {
  group('unique()', () {
    test('returns unique ID', () {
      expect((ID.unique()).length, 20);
    });
  });

  group('custom()', () {
    test('returns the custom string', () {
      expect(ID.custom('custom'), 'custom');
    });
  });
}
