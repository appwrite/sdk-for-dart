```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Apps apps = Apps(client);

AppInstallationList result = await apps.listInstallations(
    appId: '<APP_ID>',
    queries: [], // (optional)
    total: false, // (optional)
);
```
