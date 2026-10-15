```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Messaging messaging = Messaging(client);

models.Provider result = await messaging.createTwilioProvider(
    providerId: '<PROVIDER_ID>',
    name: '<NAME>',
    from: '<FROM>', // (optional)
    accountSid: '<ACCOUNT_SID>', // (optional)
    authToken: '<AUTH_TOKEN>', // (optional)
    enabled: false, // (optional)
);
```
