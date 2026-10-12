```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Messaging messaging = Messaging(client);

models.Message result = await messaging.updateEmail(
    messageId: '<MESSAGE_ID>',
    subject: '<SUBJECT>', // (optional)
    content: '<CONTENT>', // (optional)
    topics: [], // (optional)
    users: [], // (optional)
    targets: [], // (optional)
    cc: [], // (optional)
    bcc: [], // (optional)
    attachments: [], // (optional)
    replyToEmail: 'email@example.com', // (optional)
    replyToName: '<REPLY_TO_NAME>', // (optional)
    draft: false, // (optional)
    html: false, // (optional)
    scheduledAt: '2020-10-15T06:38:00.000+00:00', // (optional)
);
```
