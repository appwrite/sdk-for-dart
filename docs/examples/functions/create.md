```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Functions functions = Functions(client);

Func result = await functions.create(
    functionId: '<FUNCTION_ID>',
    name: '<NAME>',
    runtime: enums.Runtime.node145,
    execute: ["any"], // (optional)
    events: [], // (optional)
    schedule: '0 0 * * *', // (optional)
    timeout: 1, // (optional)
    enabled: false, // (optional)
    logging: false, // (optional)
    entrypoint: '<ENTRYPOINT>', // (optional)
    commands: '<COMMANDS>', // (optional)
    scopes: [enums.ProjectKeyScopes.projectRead], // (optional)
    installationId: '<INSTALLATION_ID>', // (optional)
    providerRepositoryId: '<PROVIDER_REPOSITORY_ID>', // (optional)
    providerBranch: '<PROVIDER_BRANCH>', // (optional)
    providerSilentMode: false, // (optional)
    providerRootDirectory: '<PROVIDER_ROOT_DIRECTORY>', // (optional)
    providerBranches: [], // (optional)
    providerPaths: [], // (optional)
    buildSpecification: 's-1vcpu-512mb', // (optional)
    runtimeSpecification: 's-1vcpu-512mb', // (optional)
    deploymentRetention: 0, // (optional)
);
```
