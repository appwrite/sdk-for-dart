import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ResourceToken', () {
    test('model', () {
      final model = ResourceToken(
        $id: 'bb8ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        resourceId: '5e5ea5c168bb8:5e5ea5c168bb8',
        resourceType: 'files',
        expire: '2020-10-15T06:38:00.000+00:00',
        secret: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
        accessedAt: '2020-10-15T06:38:00.000+00:00',
      );

      final map = model.toMap();
      final result = ResourceToken.fromMap(map);

      expect(result.$id, 'bb8ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.resourceId, '5e5ea5c168bb8:5e5ea5c168bb8');
      expect(result.resourceType, 'files');
      expect(result.expire, '2020-10-15T06:38:00.000+00:00');
      expect(result.secret, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c');
      expect(result.accessedAt, '2020-10-15T06:38:00.000+00:00');
    });
  });
}
