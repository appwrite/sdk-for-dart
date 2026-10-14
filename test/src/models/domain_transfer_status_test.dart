import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('DomainTransferStatus', () {
    test('model', () {
      final model = DomainTransferStatus(
        status: DomainTransferStatusEnum.transferrable,
        reason: "Transfer in progress",
        timestamp: "2020-10-15T06:38:00.000+00:00",
      );

      final map = model.toMap();
      final result = DomainTransferStatus.fromMap(map);

      expect(result.status, DomainTransferStatusEnum.transferrable);
      expect(result.reason, "Transfer in progress");
      expect(result.timestamp, "2020-10-15T06:38:00.000+00:00");
    });
  });
}
