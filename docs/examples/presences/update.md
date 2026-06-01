```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/permission.dart';
import 'package:dart_appwrite/role.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Presences presences = Presences(client);

Presence result = await presences.update(
    presenceId: '<PRESENCE_ID>',
    userId: '<USER_ID>',
    status: '<STATUS>', // (optional)
    expiresAt: '2020-10-15T06:38:00.000+00:00', // (optional)
    metadata: {}, // (optional)
    permissions: [Permission.read(Role.any())], // (optional)
    purge: false, // (optional)
);
```
