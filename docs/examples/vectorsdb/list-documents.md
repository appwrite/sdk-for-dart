```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

VectorsDB vectorsDB = VectorsDB(client);

models.DocumentList result = await vectorsDB.listDocuments(
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    queries: [], // (optional)
    transactionId: '<TRANSACTION_ID>', // (optional)
    total: false, // (optional)
    ttl: 0, // (optional)
);
```
