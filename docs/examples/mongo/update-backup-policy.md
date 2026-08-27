```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Mongo mongo = Mongo(client);

BackupPolicy result = await mongo.updateBackupPolicy(
    databaseId: '<DATABASE_ID>',
    policyId: '<POLICY_ID>',
    name: '<NAME>', // (optional)
    schedule: '', // (optional)
    retention: 1, // (optional)
    enabled: false, // (optional)
);
```
