```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Domains domains = Domains(client);

models.DnsRecord result = await domains.createRecordA(
    domainId: '<DOMAIN_ID>',
    name: '',
    value: '',
    ttl: 1,
    comment: '<COMMENT>', // (optional)
);
```
