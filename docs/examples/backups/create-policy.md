import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Backups backups = Backups(client);

BackupPolicy result = await backups.createPolicy(
    policyId: '<POLICY_ID>',
    services: [],
    retention: 1,
    schedule: '',
    name: '<NAME>', // (optional)
    resourceId: '<RESOURCE_ID>', // (optional)
    enabled: false, // (optional)
);
