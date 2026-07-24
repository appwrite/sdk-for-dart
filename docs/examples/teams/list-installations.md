```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Teams teams = Teams(client);

AppInstallationList result = await teams.listInstallations(
    teamId: '<TEAM_ID>',
    queries: [], // (optional)
    total: false, // (optional)
);
```
