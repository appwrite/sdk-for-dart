```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Domains domains = Domains(client);

models.DnsRecord result = await domains.updateRecordSRV(
    domainId: '<DOMAIN_ID>',
    recordId: '<RECORD_ID>',
    name: '',
    value: '<VALUE>',
    ttl: 1,
    priority: 0,
    weight: 0,
    port: 0,
    comment: '<COMMENT>', // (optional)
);
```
