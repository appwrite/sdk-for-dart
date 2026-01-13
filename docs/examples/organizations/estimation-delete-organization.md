import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Organizations organizations = Organizations(client);

EstimationDeleteOrganization result = await organizations.estimationDeleteOrganization(
    organizationId: '<ORGANIZATION_ID>',
);
