@TestOn('browser')
library;

import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/src/client_browser.dart';
import 'package:test/test.dart';

// Run with: dart test -p chrome test/src/client_browser_test.dart
void main() {
  group('ClientBrowser credentials', () {
    test('sends cookies and credentials with every request', () {
      final client = ClientBrowser(endPoint: 'https://example.com/v1');

      expect(
        client.withCredentials,
        isTrue,
        reason: 'without credentials the browser drops the session cookie and '
            'every request after sign-in is treated as anonymous',
      );
    });

    test('keeps credentials enabled after the client is configured', () {
      final client = ClientBrowser()
        ..setEndpoint('https://example.com/v1')
        ..setProject('project')
        ..setCookie('a_session=1')
        ..addHeader('X-Test', 'value');

      expect(client.withCredentials, isTrue);
    });

    test('the Client factory builds a browser client with credentials', () {
      final client = Client();

      expect(client, isA<ClientBrowser>());
      expect((client as ClientBrowser).withCredentials, isTrue);
    });

    test('the endpoint is unchanged by the credentials setting', () {
      final client = ClientBrowser();

      expect(client.endPoint, 'https://cloud.appwrite.io/v1');
      expect(client.withCredentials, isTrue);
    });
  });
}
