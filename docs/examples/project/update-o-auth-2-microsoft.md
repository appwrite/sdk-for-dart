```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

models.OAuth2Microsoft result = await project.updateOAuth2Microsoft(
    applicationId: '<APPLICATION_ID>', // (optional)
    applicationSecret: '<APPLICATION_SECRET>', // (optional)
    tenant: '<TENANT>', // (optional)
    prompt: [enums.ProjectOAuth2MicrosoftPrompt.none], // (optional)
    enabled: false, // (optional)
);
```
