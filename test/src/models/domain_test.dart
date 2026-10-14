import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('Domain', () {
    test('model', () {
      final model = Domain(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        domain: "example.com",
        registrar: "appwrite",
        nameservers: "Appwrite",
        expire: "2020-10-15T06:38:00.000+00:00",
        renewal: "2020-10-15T06:38:00.000+00:00",
        autoRenewal: true,
        renewalPrice: 2599,
        teamId: "5e5ea5c16897e",
        dnsRecords: [],
      );

      final map = model.toMap();
      final result = Domain.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.domain, "example.com");
      expect(result.registrar, "appwrite");
      expect(result.nameservers, "Appwrite");
      expect(result.expire, "2020-10-15T06:38:00.000+00:00");
      expect(result.renewal, "2020-10-15T06:38:00.000+00:00");
      expect(result.autoRenewal, true);
      expect(result.renewalPrice, 2599);
      expect(result.teamId, "5e5ea5c16897e");
      expect(result.dnsRecords, []);
    });
  });
}
