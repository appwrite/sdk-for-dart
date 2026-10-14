```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Oauth2 oauth2 = Oauth2(client);

models.Oauth2DeviceAuthorization result = await oauth2.createDeviceAuthorization(
    clientId: '<CLIENT_ID>', // (optional)
    scope: '<SCOPE>', // (optional)
    authorizationDetails: '<AUTHORIZATION_DETAILS>', // (optional)
    resource: [], // (optional)
    audience: '<AUDIENCE>', // (optional)
);
```
