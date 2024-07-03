import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('&lt;YOUR_PROJECT_ID&gt;'); // Your project ID

Account account = Account(client);

User result = await account.create(
    userId: '<USER_ID>',
    email: 'email@example.com',
    password: '',
    name: '<NAME>', // (optional)
);
