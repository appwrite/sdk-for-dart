import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ReportList', () {
    test('model', () {
      final model = ReportList(
        total: 5,
        reports: [],
      );

      final map = model.toMap();
      final result = ReportList.fromMap(map);

      expect(result.total, 5);
      expect(result.reports, []);
    });
  });
}
