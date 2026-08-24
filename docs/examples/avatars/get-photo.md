```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

<<<<<<<< HEAD:docs/examples/avatars/get-photo.md
Avatars avatars = Avatars(client);

Uint8List result = await avatars.getPhoto(
    width: 0, // (optional)
    height: 0, // (optional)
    quality: 0, // (optional)
    output: 'png', // (optional)
    rating: 'g', // (optional)
========
TablesDB tablesDB = TablesDB(client);

DatabaseMigrationList result = await tablesDB.listMigrations(
    databaseId: '<DATABASE_ID>',
>>>>>>>> origin/main:docs/examples/tablesdb/list-migrations.md
);
```
