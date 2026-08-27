```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/permission.dart';
import 'package:dart_appwrite/role.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

VectorsDB vectorsDB = VectorsDB(client);

VectorsdbCollection result = await vectorsDB.updateCollection(
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    name: '<NAME>',
    dimension: 1, // (optional)
    permissions: [Permission.read(Role.any())], // (optional)
    documentSecurity: false, // (optional)
    enabled: false, // (optional)
);
```
