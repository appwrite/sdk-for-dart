import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Framework', () {
    test('model', () {
      final model = Framework(
        key: 'sveltekit',
        name: 'SvelteKit',
        buildRuntime: 'node-22',
        runtimes: [],
        adapters: [],
      );

      final map = model.toMap();
      final result = Framework.fromMap(map);

      expect(result.key, 'sveltekit');
      expect(result.name, 'SvelteKit');
      expect(result.buildRuntime, 'node-22');
      expect(result.runtimes, []);
      expect(result.adapters, []);
    });
  });
}
