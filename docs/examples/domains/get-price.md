```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Domains domains = Domains(client);

models.DomainPrice result = await domains.getPrice(
    domain: 'example.com',
    periodYears: 0, // (optional)
    registrationType: enums.DomainRegistrationType.new, // (optional)
);
```
