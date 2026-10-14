import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DnsRecordsList', () {
    test('model', () {
      final model = DnsRecordsList(
        total: 5,
        dnsRecords: [],
      );

      final map = model.toMap();
      final result = DnsRecordsList.fromMap(map);

      expect(result.total, 5);
      expect(result.dnsRecords, []);
    });
  });
}
