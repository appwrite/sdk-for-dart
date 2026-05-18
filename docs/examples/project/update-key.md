```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

Key result = await project.updateKey(
    keyId: '<KEY_ID>',
    name: '<NAME>',
    scopes: [enums.ProjectKeyScopes.projectRead],
    expire: '2020-10-15T06:38:00.000+00:00', // (optional)
);
```
