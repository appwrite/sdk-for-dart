```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/permission.dart';
import 'package:dart_appwrite/role.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

DocumentsDB documentsDB = DocumentsDB(client);

Document result = await documentsDB.createDocument(
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    documentId: '<DOCUMENT_ID>',
    data: {
        "username": "walter.obrien",
        "email": "walter.obrien@example.com",
        "fullName": "Walter O'Brien",
        "age": 30,
        "isAdmin": false
    },
    permissions: [Permission.read(Role.any())], // (optional)
);
```
