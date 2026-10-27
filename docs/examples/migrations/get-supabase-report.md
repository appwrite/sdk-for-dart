```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Migrations migrations = Migrations(client);

models.MigrationReport result = await migrations.getSupabaseReport(
    resources: [enums.SupabaseMigrationResource.user],
    endpoint: 'https://example.com',
    apiKey: '<API_KEY>',
    databaseHost: '<DATABASE_HOST>',
    username: '<USERNAME>',
    password: 'password',
    port: 5432, // (optional)
);
```
