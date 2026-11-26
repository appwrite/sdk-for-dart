```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Monitors monitors = Monitors(client);

models.Monitor result = await monitors.updateUsageMonitor(
    monitorId: '<MONITOR_ID>',
    name: '<NAME>', // (optional)
    rules: [
        Query.greaterThan('network.outbound', 5000000000),
    ], // (optional)
    window: 3600, // (optional)
    cooldown: 1800, // (optional)
    enabled: true, // (optional)
    notify: ["owner"], // (optional)
    severity: enums.MonitorSeverity.info, // (optional)
    escalationId: '<ESCALATION_ID>', // (optional)
);
```
