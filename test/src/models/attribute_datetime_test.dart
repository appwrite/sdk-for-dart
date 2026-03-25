import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeDatetime', () {
    test('model', () {
      final model = AttributeDatetime(
        key: 'birthDay',
        type: 'datetime',
        status: AttributeStatus.available,
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        format: 'datetime',
      );

      final map = model.toMap();
      final result = AttributeDatetime.fromMap(map);

      expect(result.key, 'birthDay');
      expect(result.type, 'datetime');
      expect(result.status, AttributeStatus.available);
      expect(result.error, 'string');
      expect(result.xrequired, true);
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.format, 'datetime');
    });
  });
}
