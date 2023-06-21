import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeDatetime', () {

    test('model', () {
      final model = AttributeDatetime(
        key: 'birthDay',
        type: 'datetime',
        status: 'available',
        xrequired: true,
        format: 'datetime',
      );

      final map = model.toMap();
      final result = AttributeDatetime.fromMap(map);

      expect(result.key, 'birthDay');
      expect(result.type, 'datetime');
      expect(result.status, 'available');
      expect(result.xrequired, true);
      expect(result.format, 'datetime');
    });
  });
}
