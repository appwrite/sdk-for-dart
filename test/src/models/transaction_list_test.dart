import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('TransactionList', () {
    test('model', () {
      final model = TransactionList(
        total: 5,
        transactions: [],
      );

      final map = model.toMap();
      final result = TransactionList.fromMap(map);

            expect(result.total, 5);
                  expect(result.transactions, []);
          });
  });
}
