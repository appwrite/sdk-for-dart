```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Migrations migrations = Migrations(client);

models.Migration result = await migrations.createCSVImport(
    bucketId: '<BUCKET_ID>',
    fileId: '<FILE_ID>',
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    internalFile: false, // (optional)
    onDuplicate: enums.OnDuplicate.fail, // (optional)
);
```
