```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Messaging messaging = Messaging(client);

Message result = await messaging.updateSMS(
    messageId: '<MESSAGE_ID>',
    topics: [], // (optional)
    users: [], // (optional)
    targets: [], // (optional)
    content: '<CONTENT>', // (optional)
    draft: false, // (optional)
    scheduledAt: '2020-10-15T06:38:00.000+00:00', // (optional)
);
```
