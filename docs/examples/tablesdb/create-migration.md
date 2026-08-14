```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

TablesDB tablesDB = TablesDB(client);

DatabaseMigration result = await tablesDB.createMigration(
    databaseId: '<DATABASE_ID>',
    specification: 's-1vcpu-1gb',
    autoCutover: false, // (optional)
);
```
