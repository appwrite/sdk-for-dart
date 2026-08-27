import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseBackupStorage', () {
    test('model', () {
      final model = DedicatedDatabaseBackupStorage(
        provider: "s3",
        bucket: "my-backup-bucket",
        region: "us-east-1",
        prefix: "backups/",
        endpoint: "https://minio.example.com",
      );

      final map = model.toMap();
      final result = DedicatedDatabaseBackupStorage.fromMap(map);

      expect(result.provider, "s3");
      expect(result.bucket, "my-backup-bucket");
      expect(result.region, "us-east-1");
      expect(result.prefix, "backups/");
      expect(result.endpoint, "https://minio.example.com");
    });
  });
}
