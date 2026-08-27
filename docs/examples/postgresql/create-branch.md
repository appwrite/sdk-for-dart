```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Postgresql postgresql = Postgresql(client);

DedicatedDatabase result = await postgresql.createBranch(
    databaseId: '<DATABASE_ID>',
    branchId: '<BRANCH_ID>', // (optional)
    ttl: 300, // (optional)
);
```
