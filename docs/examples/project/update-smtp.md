```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

Project result = await project.updateSMTP(
    host: '', // (optional)
    port: 0, // (optional)
    username: '<USERNAME>', // (optional)
    password: '<PASSWORD>', // (optional)
    senderEmail: 'email@example.com', // (optional)
    senderName: '<SENDER_NAME>', // (optional)
    replyToEmail: 'email@example.com', // (optional)
    replyToName: '<REPLY_TO_NAME>', // (optional)
    secure: enums.ProjectSMTPSecure.tls, // (optional)
    enabled: false, // (optional)
);
```
