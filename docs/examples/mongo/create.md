```dart
import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Mongo mongo = Mongo(client);

DedicatedDatabase result = await mongo.create(
    databaseId: '<DATABASE_ID>',
    name: '<NAME>',
    version: '17', // (optional)
    specification: '<SPECIFICATION>', // (optional)
    replicas: 0, // (optional)
    syncMode: 'async', // (optional)
    networkIdleTimeoutSeconds: 60, // (optional)
    networkIPAllowlist: [], // (optional)
    idleTimeoutMinutes: 5, // (optional)
    pitr: false, // (optional)
    pitrRetentionDays: 1, // (optional)
    storageAutoscaling: false, // (optional)
    storageAutoscalingThresholdPercent: 50, // (optional)
    storageAutoscalingMaxGb: 0, // (optional)
);
```
