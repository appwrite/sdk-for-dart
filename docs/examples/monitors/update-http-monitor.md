```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Monitors monitors = Monitors(client);

models.Monitor result = await monitors.updateHttpMonitor(
    monitorId: '<MONITOR_ID>',
    name: '<NAME>', // (optional)
    url: 'https://api.example.com/health', // (optional)
    method: enums.MonitorMethod.gET, // (optional)
    headers: {
        "Authorization": "Bearer <TOKEN>"
    }, // (optional)
    body: '<BODY>', // (optional)
    rules: [
        Query.or([
            Query.notBetween('statusCode', 200, 299),
            Query.greaterThan('latency', 2000),
        ]),
    ], // (optional)
    interval: 60, // (optional)
    timeout: 10, // (optional)
    cooldown: 300, // (optional)
    enabled: true, // (optional)
    notify: ["owner"], // (optional)
    severity: enums.MonitorSeverity.info, // (optional)
    escalationId: '<ESCALATION_ID>', // (optional)
);
```
