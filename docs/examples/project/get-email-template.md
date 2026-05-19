```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

EmailTemplate result = await project.getEmailTemplate(
    templateId: enums.ProjectEmailTemplateId.verification,
    locale: enums.ProjectEmailTemplateLocale.af, // (optional)
);
```
