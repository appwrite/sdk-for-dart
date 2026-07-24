```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setSession('') // The user session to authenticate with
    .setProject('<YOUR_PROJECT_ID>'); // Your project ID

Oauth2 oauth2 = Oauth2(client);

Oauth2Approve result = await oauth2.approve(
    grantId: '<GRANT_ID>',
    authorizationDetails: '<AUTHORIZATION_DETAILS>', // (optional)
    scope: '<SCOPE>', // (optional)
);
```
