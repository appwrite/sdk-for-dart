```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Analytics analytics = Analytics(client);

models.AnalyticsAnnotation result = await analytics.createAnnotation(
    propertyId: '<PROPERTY_ID>',
    annotationId: '<ANNOTATION_ID>',
    date: '2020-10-15T06:38:00.000+00:00',
    content: '<CONTENT>',
);
```
