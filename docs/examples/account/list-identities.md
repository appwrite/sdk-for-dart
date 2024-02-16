import 'package:dart_appwrite/dart_appwrite.dart';

void main() { // Init SDK
  Client client = Client();
  Account account = Account(client);

  client
    .setEndpoint('https://cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('5df5acd0d48c2') // Your project ID
    .setSession('') // The user session to authenticate with
  ;

  Future result = account.listIdentities(
  );

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}}