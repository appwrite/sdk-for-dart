import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Users users = Users(client);

User result = await users.createScryptModifiedUser(
    userId: '<USER_ID>',
    email: 'email@example.com',
    password: 'password',
    passwordSalt: '<PASSWORD_SALT>',
    passwordSaltSeparator: '<PASSWORD_SALT_SEPARATOR>',
    passwordSignerKey: '<PASSWORD_SIGNER_KEY>',
    name: '<NAME>', // (optional)
);
