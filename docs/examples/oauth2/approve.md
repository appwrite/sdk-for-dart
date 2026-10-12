```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Oauth2 oauth2 = Oauth2(client);

models.Oauth2Approve result = await oauth2.approve(
    grantId: '<GRANT_ID>',
    authorizationDetails: '<AUTHORIZATION_DETAILS>', // (optional)
    scope: '<SCOPE>', // (optional)
);
```
