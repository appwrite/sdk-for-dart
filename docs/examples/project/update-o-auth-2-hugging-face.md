```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

OAuth2HuggingFace result = await project.updateOAuth2HuggingFace(
    clientId: '<CLIENT_ID>', // (optional)
    clientSecret: '<CLIENT_SECRET>', // (optional)
    enabled: false, // (optional)
);
```
