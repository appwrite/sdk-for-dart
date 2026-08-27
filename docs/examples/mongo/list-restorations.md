```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Mongo mongo = Mongo(client);

DedicatedDatabaseRestorationList result = await mongo.listRestorations(
    databaseId: '<DATABASE_ID>',
    status: 'pending', // (optional)
    type: 'backup', // (optional)
    limit: 1, // (optional)
    offset: 0, // (optional)
);
```
