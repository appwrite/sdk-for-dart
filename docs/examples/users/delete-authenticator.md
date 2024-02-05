import 'package:dart_appwrite/dart_appwrite.dart';

void main() { // Init SDK
  Client client = Client();
  Users users = Users(client);

  client
    .setEndpoint('https://cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('5df5acd0d48c2') // Your project ID
    .setSession('') // The user session to authenticate with
  ;

  Future result = users.deleteAuthenticator(
    userId:'[USER_ID]' ,
    provider: AuthenticatorProvider.totp,
    otp:'[OTP]' ,
  );

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}}