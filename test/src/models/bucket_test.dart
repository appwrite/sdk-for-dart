import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Bucket', () {
    test('model', () {
      final model = Bucket(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        $permissions: [],
        fileSecurity: true,
        name: 'Documents',
        enabled: true,
        maximumFileSize: 100,
        allowedFileExtensions: [],
        compression: 'gzip',
        encryption: true,
        antivirus: true,
        transformations: true,
      );

      final map = model.toMap();
      final result = Bucket.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$permissions, []);
                  expect(result.fileSecurity, true);
                  expect(result.name, 'Documents');
                  expect(result.enabled, true);
                  expect(result.maximumFileSize, 100);
                  expect(result.allowedFileExtensions, []);
                  expect(result.compression, 'gzip');
                  expect(result.encryption, true);
                  expect(result.antivirus, true);
                  expect(result.transformations, true);
          });
  });
}
