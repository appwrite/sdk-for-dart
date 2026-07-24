```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Apps apps = Apps(client);

AppSecret result = await apps.getSecret(
    appId: '<APP_ID>',
    secretId: '<SECRET_ID>',
);
```
