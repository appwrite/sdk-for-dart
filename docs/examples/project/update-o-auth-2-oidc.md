```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

OAuth2Oidc result = await project.updateOAuth2Oidc(
    clientId: '<CLIENT_ID>', // (optional)
    clientSecret: '<CLIENT_SECRET>', // (optional)
    wellKnownURL: 'https://example.com', // (optional)
    authorizationURL: 'https://example.com', // (optional)
    tokenURL: 'https://example.com', // (optional)
    userInfoURL: 'https://example.com', // (optional)
    prompt: [enums.ProjectOAuth2OidcPrompt.none], // (optional)
    maxAge: 0, // (optional)
    enabled: false, // (optional)
);
```
