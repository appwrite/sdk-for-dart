```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Messaging messaging = Messaging(client);

Provider result = await messaging.createSesProvider(
    providerId: '<PROVIDER_ID>',
    name: '<NAME>',
    accessKey: '<ACCESS_KEY>', // (optional)
    secretKey: '<SECRET_KEY>', // (optional)
    region: '<REGION>', // (optional)
    fromName: '<FROM_NAME>', // (optional)
    fromEmail: 'email@example.com', // (optional)
    replyToName: '<REPLY_TO_NAME>', // (optional)
    replyToEmail: 'email@example.com', // (optional)
    enabled: false, // (optional)
);
```
