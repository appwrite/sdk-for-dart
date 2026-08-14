import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Embedding', () {
    test('model', () {
      final model = Embedding(
        model: 'nomic-embed-text',
        dimension: 768,
        embedding: [],
        error: 'Error message',
      );

      final map = model.toMap();
      final result = Embedding.fromMap(map);

            expect(result.model, 'nomic-embed-text');
                  expect(result.dimension, 768);
                  expect(result.embedding, []);
                  expect(result.error, 'Error message');
          });
  });
}
