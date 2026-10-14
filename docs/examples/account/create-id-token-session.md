```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Account account = Account(client);

models.Session result = await account.createIdTokenSession(
    provider: enums.IdTokenProvider.apple,
    idToken: '<ID_TOKEN>',
    nonce: '<NONCE>', // (optional)
    accessToken: '<ACCESS_TOKEN>', // (optional)
    accessTokenExpiry: 0, // (optional)
    name: '<NAME>', // (optional)
);
```
