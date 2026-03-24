```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

DocumentsDB documentsDB = DocumentsDB(client);

DocumentList result = await documentsDB.updateDocuments(
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    data: {}, // (optional)
    queries: [], // (optional)
    transactionId: '<TRANSACTION_ID>', // (optional)
);
```
