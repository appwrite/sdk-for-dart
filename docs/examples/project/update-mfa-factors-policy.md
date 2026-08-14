```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

Project result = await project.updateMFAFactorsPolicy(
    totp: false, // (optional)
    email: false, // (optional)
    phone: false, // (optional)
    custom: false, // (optional)
);
```
