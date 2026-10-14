import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DnsRecord', () {
    test('model', () {
      final model = DnsRecord(
        $id: "5f40a6e10c65e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        type: "A",
        name: "mail",
        value: "192.0.2.1",
        ttl: 86400,
        priority: 10,
        lock: true,
        weight: 10,
        port: 443,
        comment: "Mail server record",
      );

      final map = model.toMap();
      final result = DnsRecord.fromMap(map);

      expect(result.$id, "5f40a6e10c65e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.type, "A");
      expect(result.name, "mail");
      expect(result.value, "192.0.2.1");
      expect(result.ttl, 86400);
      expect(result.priority, 10);
      expect(result.lock, true);
      expect(result.weight, 10);
      expect(result.port, 443);
      expect(result.comment, "Mail server record");
    });
  });
}
