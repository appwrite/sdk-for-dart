```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Users users = Users(client);

models.User result = await users.createArgon2User(
    userId: '<USER_ID>',
    email: 'email@example.com',
    password: '\$argon2id\$v=19\$m=65536,t=4,p=1\$NC8xaW1CVXlIZXFSQi9FRg\$0bd4pLo1ytyqvCwl5NSijpm5OIe8J6CjZ1vFemKAg+o',
    name: '<NAME>', // (optional)
);
```
