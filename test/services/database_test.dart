import 'package:appwrite/appwrite.dart';
import 'package:appwrite/enums.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mocks.dart';

void main() {

  ClientMock clientMock = ClientMock();
  Database database = Database(clientMock);

  test('should call client with proper parameters', () async {
    await database.listDocuments(collectionId: "abc", offset: 20, limit: 10, orderType: OrderType.desc);
    Map<String, dynamic> params = {
      'filters': [],
      'offset': 20,
      'limit': 10,
      'order-field': '\$id',
      'order-type': 'DESC',
      'order-cast': 'string',
      'search': null,
      'first': null,
      'last': null,
    };
    verify(clientMock.call(HttpMethod.get, path: '/database/collections/abc/documents', params: params)).called(1);
  });

}