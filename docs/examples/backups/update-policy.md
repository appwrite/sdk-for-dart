import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Backups backups = Backups(client);

BackupPolicy result = await backups.updatePolicy(
    policyId: '<POLICY_ID>',
    name: '<NAME>', // (optional)
    retention: 1, // (optional)
    schedule: '', // (optional)
    enabled: false, // (optional)
);
