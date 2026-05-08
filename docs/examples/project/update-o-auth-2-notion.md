```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

OAuth2Notion result = await project.updateOAuth2Notion(
    oauthClientId: '<OAUTH_CLIENT_ID>', // (optional)
    oauthClientSecret: '<OAUTH_CLIENT_SECRET>', // (optional)
    enabled: false, // (optional)
);
```
