```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Organization organization = Organization(client);

Membership result = await organization.createMembership(
    roles: [],
    email: 'email@example.com', // (optional)
    userId: '<USER_ID>', // (optional)
    phone: '+12065550100', // (optional)
    url: 'https://example.com', // (optional)
    name: '<NAME>', // (optional)
);
```
