```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Apps apps = Apps(client);

models.AppInstallation result = await apps.getInstallation(
    appId: '<APP_ID>',
    installationId: '<INSTALLATION_ID>',
);
```
