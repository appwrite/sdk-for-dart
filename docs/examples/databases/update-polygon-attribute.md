```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Databases databases = Databases(client);

models.AttributePolygon result = await databases.updatePolygonAttribute(
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    key: '<KEY>',
    xrequired: false,
    xdefault: [[[1, 2], [3, 4], [5, 6], [1, 2]]], // (optional)
    newKey: '<NEW_KEY>', // (optional)
);
```
