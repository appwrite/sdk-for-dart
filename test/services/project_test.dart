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
    group('Project test', () {
        late MockClient client;
        late Project project;

        setUp(() {
            client = MockClient();
            project = Project(client);
        });

        test('test method listVariables()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'variables': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.listVariables(
            );
            expect(response, isA<models.VariableList>());

        });

        test('test method createVariable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'secret': true,
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createVariable(
                variableId: '<VARIABLE_ID>',
                key: '<KEY>',
                value: '<VALUE>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method getVariable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'secret': true,
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.getVariable(
                variableId: '<VARIABLE_ID>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method updateVariable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'secret': true,
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateVariable(
                variableId: '<VARIABLE_ID>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method deleteVariable()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.deleteVariable(
                variableId: '<VARIABLE_ID>',
            );
        });

    });
}