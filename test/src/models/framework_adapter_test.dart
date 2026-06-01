import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('FrameworkAdapter', () {
    test('model', () {
      final model = FrameworkAdapter(
        key: 'static',
        installCommand: 'npm install',
        buildCommand: 'npm run build',
        outputDirectory: './dist',
        fallbackFile: 'index.html',
      );

      final map = model.toMap();
      final result = FrameworkAdapter.fromMap(map);

            expect(result.key, 'static');
                  expect(result.installCommand, 'npm install');
                  expect(result.buildCommand, 'npm run build');
                  expect(result.outputDirectory, './dist');
                  expect(result.fallbackFile, 'index.html');
          });
  });
}
