```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Mysql mysql = Mysql(client);

DedicatedDatabaseRestoration result = await mysql.createRestoration(
    databaseId: '<DATABASE_ID>',
    type: 'backup', // (optional)
    backupId: '<BACKUP_ID>', // (optional)
    targetDatabaseId: '<TARGET_DATABASE_ID>', // (optional)
    targetTime: '2020-10-15T06:38:00.000+00:00', // (optional)
);
```
