```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Migrations migrations = Migrations(client);

models.Migration result = await migrations.createCSVExport(
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    filename: '<FILENAME>',
    columns: [], // (optional)
    queries: [], // (optional)
    delimiter: '<DELIMITER>', // (optional)
    enclosure: '<ENCLOSURE>', // (optional)
    escape: '<ESCAPE>', // (optional)
    header: false, // (optional)
    notify: false, // (optional)
);
```
