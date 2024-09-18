import 'package:test/test.dart';
import 'package:dart_appwrite/src/exception.dart';
import 'package:dart_appwrite/payload.dart';

void main() {
  group('Payload', () {
    test('creates Payload from path', () {
      final payload = Payload.fromFile(path: '/path/to/file');

      expect(payload.path, '/path/to/file');
      expect(payload.filename, isNull);
      expect(payload.data, isNull);
    });

    test('creates Payload from binary', () {
      final payload = Payload.fromBinary(data: [1, 2, 3], filename: 'file.txt');

      expect(payload.path, isNull);
      expect(payload.filename, 'file.txt');
      expect(payload.data, [1, 2, 3]);
    });
  });
}
