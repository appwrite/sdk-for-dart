```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Proxy proxy = Proxy(client);

ProxyRule result = await proxy.createRedirectRule(
    domain: '',
    url: 'https://example.com',
    statusCode: enums.StatusCode.movedPermanently,
    resourceId: '<RESOURCE_ID>',
    resourceType: enums.ProxyResourceType.site,
);
```
