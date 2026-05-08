```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

OAuth2Gitlab result = await project.updateOAuth2Gitlab(
    applicationId: '<APPLICATION_ID>', // (optional)
    secret: '<SECRET>', // (optional)
    endpoint: 'https://example.com', // (optional)
    enabled: false, // (optional)
);
```
