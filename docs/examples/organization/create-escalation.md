```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Organization organization = Organization(client);

models.Escalation result = await organization.createEscalation(
    escalationId: '<ESCALATION_ID>',
    name: '<NAME>',
    steps: [
	    {
	        "delay": 0,
	        "roles": [
	            "owner"
	        ]
	    },
	    {
	        "delay": 900,
	        "roles": [
	            "developer"
	        ],
	        "userIds": [
	            "<USER_ID>"
	        ]
	    }
	],
    repeat: 1, // (optional)
);
```
