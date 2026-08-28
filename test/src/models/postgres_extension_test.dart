import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PostgresExtension', () {
    test('model', () {
      final model = PostgresExtension(
        key: "vector",
        name: "pgvector",
        description: "Vector data type and similarity search for embeddings.",
        category: "search",
      );

      final map = model.toMap();
      final result = PostgresExtension.fromMap(map);

      expect(result.key, "vector");
      expect(result.name, "pgvector");
      expect(
        result.description,
        "Vector data type and similarity search for embeddings.",
      );
      expect(result.category, "search");
    });
  });
}
