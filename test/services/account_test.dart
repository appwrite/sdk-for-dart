import 'package:appwrite/appwrite.dart';
import 'package:appwrite/enums.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mocks.dart';

void main() {

  ClientMock clientMock = ClientMock();
  Account account = Account(clientMock);

  test('should call client with proper parameters', () async {
    await account.create(email: "test@test.com", password: "pass1234");
    verify(clientMock.call(HttpMethod.post, path: '/account', params: {'email':'test@test.com', 'password':'pass1234', 'name':null})).called(1);
  });

}