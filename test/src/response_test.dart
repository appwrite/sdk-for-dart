import 'package:dart_appwrite/src/response.dart';
import 'package:test/test.dart';

void main() {
  group('toString()', () {
    test('with a string', () {
      final response = Response(data: 'string');

      expect(response.toString(), 'string');
    });

    test('with a map', () {
      final response = Response(data: {'x': 1});

      expect(response.toString(), '{"x":1}');
    });
  });
}