import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;
import 'package:dart_appwrite/src/enums.dart';
import 'package:dart_appwrite/src/response.dart';
import 'dart:typed_data';
import 'package:dart_appwrite/dart_appwrite.dart';

class MockClient extends Mock implements Client {
  Map<String, String> config = {'project': 'testproject'};
  String endPoint = 'https://localhost/v1';
  @override
  Future<Response> call(
    HttpMethod? method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(Invocation.method(#call, [method]),
        returnValue: Response());
  }

  @override
  Future<String?> webAuth(Uri url) async {
    return super.noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
  }) async {
    return super.noSuchMethod(Invocation.method(#chunkedUpload, [path, params, paramName, idParamName, headers]), returnValue: Response(data: {}));
  }
}

void main() {
    group('TablesDB test', () {
        late MockClient client;
        late TablesDB tablesDB;

        setUp(() {
            client = MockClient();
            tablesDB = TablesDB(client);
        });

        test('test method list()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'databases': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.list(
            );
            expect(response, isA<models.DatabaseList>());

        });

        test('test method create()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                'name': 'My Database',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'enabled': true,
                'type': 'legacy',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.create(
                databaseId: '<DATABASE_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Database>());

        });

        test('test method listTransactions()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'transactions': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.listTransactions(
            );
            expect(response, isA<models.TransactionList>());

        });

        test('test method createTransaction()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'status': 'pending',
                'operations': 5,
                'expiresAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createTransaction(
            );
            expect(response, isA<models.Transaction>());

        });

        test('test method getTransaction()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'status': 'pending',
                'operations': 5,
                'expiresAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.getTransaction(
                transactionId: '<TRANSACTION_ID>',
            );
            expect(response, isA<models.Transaction>());

        });

        test('test method updateTransaction()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'status': 'pending',
                'operations': 5,
                'expiresAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateTransaction(
                transactionId: '<TRANSACTION_ID>',
            );
            expect(response, isA<models.Transaction>());

        });

        test('test method deleteTransaction()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.deleteTransaction(
                transactionId: '<TRANSACTION_ID>',
            );
        });

        test('test method createOperations()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'status': 'pending',
                'operations': 5,
                'expiresAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createOperations(
                transactionId: '<TRANSACTION_ID>',
            );
            expect(response, isA<models.Transaction>());

        });

        test('test method get()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                'name': 'My Database',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'enabled': true,
                'type': 'legacy',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.get(
                databaseId: '<DATABASE_ID>',
            );
            expect(response, isA<models.Database>());

        });

        test('test method update()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                'name': 'My Database',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'enabled': true,
                'type': 'legacy',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.update(
                databaseId: '<DATABASE_ID>',
            );
            expect(response, isA<models.Database>());

        });

        test('test method delete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.delete(
                databaseId: '<DATABASE_ID>',
            );
        });

        test('test method listTables()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'tables': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.listTables(
                databaseId: '<DATABASE_ID>',
            );
            expect(response, isA<models.TableList>());

        });

        test('test method createTable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],
                'databaseId': '5e5ea5c16897e',
                'name': 'My Table',
                'enabled': true,
                'rowSecurity': true,
                'columns': [],
                'indexes': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createTable(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Table>());

        });

        test('test method getTable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],
                'databaseId': '5e5ea5c16897e',
                'name': 'My Table',
                'enabled': true,
                'rowSecurity': true,
                'columns': [],
                'indexes': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.getTable(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
            );
            expect(response, isA<models.Table>());

        });

        test('test method updateTable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],
                'databaseId': '5e5ea5c16897e',
                'name': 'My Table',
                'enabled': true,
                'rowSecurity': true,
                'columns': [],
                'indexes': [],};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateTable(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
            );
            expect(response, isA<models.Table>());

        });

        test('test method deleteTable()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.deleteTable(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
            );
        });

        test('test method listColumns()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'columns': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.listColumns(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
            );
            expect(response, isA<models.ColumnList>());

        });

        test('test method createBooleanColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'isEnabled',
                'type': 'boolean',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createBooleanColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnBoolean>());

        });

        test('test method updateBooleanColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'isEnabled',
                'type': 'boolean',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateBooleanColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
                xdefault: true,
            );
            expect(response, isA<models.ColumnBoolean>());

        });

        test('test method createDatetimeColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'birthDay',
                'type': 'datetime',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'format': 'datetime',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createDatetimeColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnDatetime>());

        });

        test('test method updateDatetimeColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'birthDay',
                'type': 'datetime',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'format': 'datetime',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateDatetimeColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
                xdefault: '',
            );
            expect(response, isA<models.ColumnDatetime>());

        });

        test('test method createEmailColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'userEmail',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'format': 'email',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createEmailColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnEmail>());

        });

        test('test method updateEmailColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'userEmail',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'format': 'email',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateEmailColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
                xdefault: 'email@example.com',
            );
            expect(response, isA<models.ColumnEmail>());

        });

        test('test method createEnumColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'status',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'elements': [],
                'format': 'enum',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createEnumColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                elements: [],
                xrequired: true,
            );
            expect(response, isA<models.ColumnEnum>());

        });

        test('test method updateEnumColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'status',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'elements': [],
                'format': 'enum',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateEnumColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                elements: [],
                xrequired: true,
                xdefault: '<DEFAULT>',
            );
            expect(response, isA<models.ColumnEnum>());

        });

        test('test method createFloatColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'percentageCompleted',
                'type': 'double',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createFloatColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnFloat>());

        });

        test('test method updateFloatColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'percentageCompleted',
                'type': 'double',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateFloatColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
                xdefault: 1.0,
            );
            expect(response, isA<models.ColumnFloat>());

        });

        test('test method createIntegerColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'count',
                'type': 'integer',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createIntegerColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnInteger>());

        });

        test('test method updateIntegerColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'count',
                'type': 'integer',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateIntegerColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
                xdefault: 1,
            );
            expect(response, isA<models.ColumnInteger>());

        });

        test('test method createIpColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'ipAddress',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'format': 'ip',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createIpColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnIp>());

        });

        test('test method updateIpColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'ipAddress',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'format': 'ip',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateIpColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
                xdefault: '',
            );
            expect(response, isA<models.ColumnIp>());

        });

        test('test method createLineColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createLineColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnLine>());

        });

        test('test method updateLineColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateLineColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnLine>());

        });

        test('test method createPointColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createPointColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnPoint>());

        });

        test('test method updatePointColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updatePointColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnPoint>());

        });

        test('test method createPolygonColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createPolygonColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnPolygon>());

        });

        test('test method updatePolygonColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updatePolygonColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnPolygon>());

        });

        test('test method createRelationshipColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'relatedTable': 'table',
                'relationType': 'oneToOne|oneToMany|manyToOne|manyToMany',
                'twoWay': true,
                'twoWayKey': 'string',
                'onDelete': 'restrict|cascade|setNull',
                'side': 'parent|child',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createRelationshipColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                relatedTableId: '<RELATED_TABLE_ID>',
                type: enums.RelationshipType.oneToOne,
            );
            expect(response, isA<models.ColumnRelationship>());

        });

        test('test method createStringColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'size': 128,};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createStringColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                size: 1,
                xrequired: true,
            );
            expect(response, isA<models.ColumnString>());

        });

        test('test method updateStringColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'size': 128,};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateStringColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
                xdefault: '<DEFAULT>',
            );
            expect(response, isA<models.ColumnString>());

        });

        test('test method createUrlColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'githubUrl',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'format': 'url',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createUrlColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.ColumnUrl>());

        });

        test('test method updateUrlColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'githubUrl',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'format': 'url',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateUrlColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                xrequired: true,
                xdefault: 'https://example.com',
            );
            expect(response, isA<models.ColumnUrl>());

        });

        test('test method getColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'isEnabled',
                'type': 'boolean',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.getColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
            );
            expect(response, isA<models.ColumnBoolean>());

        });

        test('test method deleteColumn()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.deleteColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
            );
        });

        test('test method updateRelationshipColumn()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'relatedTable': 'table',
                'relationType': 'oneToOne|oneToMany|manyToOne|manyToMany',
                'twoWay': true,
                'twoWayKey': 'string',
                'onDelete': 'restrict|cascade|setNull',
                'side': 'parent|child',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateRelationshipColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
            );
            expect(response, isA<models.ColumnRelationship>());

        });

        test('test method listIndexes()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'indexes': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.listIndexes(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
            );
            expect(response, isA<models.ColumnIndexList>());

        });

        test('test method createIndex()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'index1',
                'type': 'primary',
                'status': 'available',
                'error': 'string',
                'columns': [],
                'lengths': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createIndex(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
                type: enums.IndexType.key,
                columns: [],
            );
            expect(response, isA<models.ColumnIndex>());

        });

        test('test method getIndex()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'index1',
                'type': 'primary',
                'status': 'available',
                'error': 'string',
                'columns': [],
                'lengths': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.getIndex(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
            );
            expect(response, isA<models.ColumnIndex>());

        });

        test('test method deleteIndex()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.deleteIndex(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                key: '',
            );
        });

        test('test method listRows()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'rows': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.listRows(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
            );
            expect(response, isA<models.RowList>());

        });

        test('test method createRow()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$sequence': 1,
                '\$tableId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createRow(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rowId: '<ROW_ID>',
                data: {},
            );
            expect(response, isA<models.Row>());

        });

        test('test method createRows()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'rows': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.createRows(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rows: [],
            );
            expect(response, isA<models.RowList>());

        });

        test('test method upsertRows()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'rows': [],};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.upsertRows(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rows: [],
            );
            expect(response, isA<models.RowList>());

        });

        test('test method updateRows()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'rows': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateRows(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
            );
            expect(response, isA<models.RowList>());

        });

        test('test method deleteRows()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'rows': [],};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.deleteRows(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
            );
            expect(response, isA<models.RowList>());

        });

        test('test method getRow()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$sequence': 1,
                '\$tableId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.getRow(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rowId: '<ROW_ID>',
            );
            expect(response, isA<models.Row>());

        });

        test('test method upsertRow()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$sequence': 1,
                '\$tableId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.upsertRow(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rowId: '<ROW_ID>',
            );
            expect(response, isA<models.Row>());

        });

        test('test method updateRow()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$sequence': 1,
                '\$tableId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.updateRow(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rowId: '<ROW_ID>',
            );
            expect(response, isA<models.Row>());

        });

        test('test method deleteRow()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.deleteRow(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rowId: '<ROW_ID>',
            );
        });

        test('test method decrementRowColumn()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$sequence': 1,
                '\$tableId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.decrementRowColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rowId: '<ROW_ID>',
                column: '',
            );
            expect(response, isA<models.Row>());

        });

        test('test method incrementRowColumn()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$sequence': 1,
                '\$tableId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tablesDB.incrementRowColumn(
                databaseId: '<DATABASE_ID>',
                tableId: '<TABLE_ID>',
                rowId: '<ROW_ID>',
                column: '',
            );
            expect(response, isA<models.Row>());

        });

    });
}