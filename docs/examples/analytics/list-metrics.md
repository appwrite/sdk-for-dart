```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Analytics analytics = Analytics(client);

models.AnalyticsMetricList result = await analytics.listMetrics(
    propertyId: '<PROPERTY_ID>',
    queries: [], // (optional)
    interval: enums.AnalyticsInterval.oneHour, // (optional)
    dimensions: [enums.AnalyticsDimension.country], // (optional)
    propKey: '<PROP_KEY>', // (optional)
    dateRange: '<DATE_RANGE>', // (optional)
    startAt: '2020-10-15T06:38:00.000+00:00', // (optional)
    endAt: '2020-10-15T06:38:00.000+00:00', // (optional)
    limit: 1, // (optional)
    total: false, // (optional)
);
```
