```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setSession('') // The user session to authenticate with
    .setProject('<YOUR_PROJECT_ID>'); // Your project ID

Oauth2 oauth2 = Oauth2(client);

Oauth2OrganizationList result = await oauth2.listOrganizations(
    limit: 1, // (optional)
    offset: 0, // (optional)
    search: '<SEARCH>', // (optional)
);
```
