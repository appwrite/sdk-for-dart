```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/permission.dart';
import 'package:dart_appwrite/role.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

VectorsDB vectorsDB = VectorsDB(client);

Document result = await vectorsDB.createDocument(
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    documentId: '<DOCUMENT_ID>',
    data: {
        "embeddings": [
            0.12,
            -0.55,
            0.88,
            1.02
        ],
        "metadata": {
            "key": "value"
        }
    },
    permissions: [Permission.read(Role.any())], // (optional)
);
```
