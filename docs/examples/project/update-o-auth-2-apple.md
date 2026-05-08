```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

OAuth2Apple result = await project.updateOAuth2Apple(
    serviceId: '<SERVICE_ID>', // (optional)
    keyId: '<KEY_ID>', // (optional)
    teamId: '<TEAM_ID>', // (optional)
    p8File: '<P8_FILE>', // (optional)
    enabled: false, // (optional)
);
```
