```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

models.PlatformAndroid result = await project.updateAndroidPlatform(
    platformId: '<PLATFORM_ID>',
    name: '<NAME>',
    applicationId: '<APPLICATION_ID>',
    fingerprints: [], // (optional)
);
```
