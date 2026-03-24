import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('EmbeddingList', () {
    test('model', () {
      final model = EmbeddingList(
        total: 5,
        embeddings: [],
      );

      final map = model.toMap();
      final result = EmbeddingList.fromMap(map);

            expect(result.total, 5);
                  expect(result.embeddings, []);
          });
  });
}
