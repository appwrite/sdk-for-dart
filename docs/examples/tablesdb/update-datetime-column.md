```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

TablesDB tablesDB = TablesDB(client);

ColumnDatetime result = await tablesDB.updateDatetimeColumn(
    databaseId: '<DATABASE_ID>',
    tableId: '<TABLE_ID>',
    key: '<KEY>',
    xrequired: false,
    xdefault: '2020-10-15T06:38:00.000+00:00',
    newKey: '<NEW_KEY>', // (optional)
);
```
