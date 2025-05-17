import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
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
  Future webAuth(
    Uri? url, 
    {
        String? callbackUrlScheme,
    }
  ) async {
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
    group('Tokens test', () {
        late MockClient client;
        late Tokens tokens;

        setUp(() {
            client = MockClient();
            tokens = Tokens(client);
        });

        test('test method list()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'tokens': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.list(
                bucketId: '<BUCKET_ID>',
                fileId: '<FILE_ID>',
            );
            expect(response, isA<models.ResourceTokenList>());

        });

        test('test method createFileToken()', () async {
            final Map<String, dynamic> data = {
                '\$id': 'bb8ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                'resourceId': '5e5ea5c168bb8:5e5ea5c168bb8',
                'resourceType': 'files',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'secret': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.createFileToken(
                bucketId: '<BUCKET_ID>',
                fileId: '<FILE_ID>',
            );
            expect(response, isA<models.ResourceToken>());

        });

        test('test method get()', () async {
            final Map<String, dynamic> data = {
                '\$id': 'bb8ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                'resourceId': '5e5ea5c168bb8:5e5ea5c168bb8',
                'resourceType': 'files',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'secret': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.get(
                tokenId: '<TOKEN_ID>',
            );
            expect(response, isA<models.ResourceToken>());

        });

        test('test method update()', () async {
            final Map<String, dynamic> data = {
                '\$id': 'bb8ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                'resourceId': '5e5ea5c168bb8:5e5ea5c168bb8',
                'resourceType': 'files',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'secret': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.update(
                tokenId: '<TOKEN_ID>',
            );
            expect(response, isA<models.ResourceToken>());

        });

        test('test method delete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await tokens.delete(
                tokenId: '<TOKEN_ID>',
            );
        });

    });
}