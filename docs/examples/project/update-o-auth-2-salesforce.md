```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

models.OAuth2Salesforce result = await project.updateOAuth2Salesforce(
    customerKey: '<CUSTOMER_KEY>', // (optional)
    customerSecret: '<CUSTOMER_SECRET>', // (optional)
    prompt: [enums.ProjectOAuth2SalesforcePrompt.login], // (optional)
    enabled: false, // (optional)
);
```
