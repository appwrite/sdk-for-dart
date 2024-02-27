import 'package:dart_appwrite/dart_appwrite.dart';

Client client = Client()
    .setEndpoint('https://cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('5df5acd0d48c2') // Your project ID
    .setSession(''); // The user session to authenticate with

Functions functions = Functions(client);

ExecutionList result = await functions.listExecutions(
    functionId: '<FUNCTION_ID>',
    queries: [], // (optional)
    search: '<SEARCH>', // (optional)
);
