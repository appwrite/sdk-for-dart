```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Analytics analytics = Analytics(client);

models.AnalyticsProperty result = await analytics.createProperty(
    propertyId: '<PROPERTY_ID>',
    name: '<NAME>',
    domain: '<DOMAIN>', // (optional)
    enabled: false, // (optional)
    allowedOrigins: [], // (optional)
    identifyUsers: false, // (optional)
    type: enums.AnalyticsPropertyType.web, // (optional)
);
```
