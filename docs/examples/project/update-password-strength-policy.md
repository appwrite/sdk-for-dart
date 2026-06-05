```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

PolicyPasswordStrength result = await project.updatePasswordStrengthPolicy(
    min: 8, // (optional)
    uppercase: false, // (optional)
    lowercase: false, // (optional)
    number: false, // (optional)
    symbols: false, // (optional)
);
```
