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
    return super
        .noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
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
    return super.noSuchMethod(
        Invocation.method(
            #chunkedUpload, [path, params, paramName, idParamName, headers]),
        returnValue: Response(data: {}));
  }
}

void main() {
  group('Storage test', () {
    late MockClient client;
    late Storage storage;

    setUp(() {
      client = MockClient();
      storage = Storage(client);
    });

    test('test method listBuckets()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'buckets': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.listBuckets();
      expect(response, isA<models.BucketList>());
    });

    test('test method createBucket()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'fileSecurity': true,
        'name': 'Documents',
        'enabled': true,
        'maximumFileSize': 100,
        'allowedFileExtensions': [],
        'compression': 'gzip',
        'encryption': true,
        'antivirus': true,
        'transformations': true,
        'totalSize': 128,
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.createBucket(
        bucketId: '<BUCKET_ID>',
        name: '<NAME>',
      );
      expect(response, isA<models.Bucket>());
    });

    test('test method getBucket()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'fileSecurity': true,
        'name': 'Documents',
        'enabled': true,
        'maximumFileSize': 100,
        'allowedFileExtensions': [],
        'compression': 'gzip',
        'encryption': true,
        'antivirus': true,
        'transformations': true,
        'totalSize': 128,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.getBucket(
        bucketId: '<BUCKET_ID>',
      );
      expect(response, isA<models.Bucket>());
    });

    test('test method updateBucket()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'fileSecurity': true,
        'name': 'Documents',
        'enabled': true,
        'maximumFileSize': 100,
        'allowedFileExtensions': [],
        'compression': 'gzip',
        'encryption': true,
        'antivirus': true,
        'transformations': true,
        'totalSize': 128,
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.updateBucket(
        bucketId: '<BUCKET_ID>',
        name: '<NAME>',
      );
      expect(response, isA<models.Bucket>());
    });

    test('test method deleteBucket()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.deleteBucket(
        bucketId: '<BUCKET_ID>',
      );
    });

    test('test method listFiles()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'files': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.listFiles(
        bucketId: '<BUCKET_ID>',
      );
      expect(response, isA<models.FileList>());
    });

    test('test method createFile()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'bucketId': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'name': 'Pink.png',
        'signature': '5d529fd02b544198ae075bd57c1762bb',
        'mimeType': 'image/png',
        'sizeOriginal': 17890,
        'chunksTotal': 17890,
        'chunksUploaded': 17890,
      };

      when(client.chunkedUpload(
        path: argThat(isNotNull),
        params: argThat(isNotNull),
        paramName: argThat(isNotNull),
        idParamName: argThat(isNotNull),
        headers: argThat(isNotNull),
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.createFile(
        bucketId: '<BUCKET_ID>',
        fileId: '<FILE_ID>',
        file: InputFile.fromPath(path: './image.png'),
      );
      expect(response, isA<models.File>());
    });

    test('test method getFile()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'bucketId': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'name': 'Pink.png',
        'signature': '5d529fd02b544198ae075bd57c1762bb',
        'mimeType': 'image/png',
        'sizeOriginal': 17890,
        'chunksTotal': 17890,
        'chunksUploaded': 17890,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.getFile(
        bucketId: '<BUCKET_ID>',
        fileId: '<FILE_ID>',
      );
      expect(response, isA<models.File>());
    });

    test('test method updateFile()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'bucketId': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'name': 'Pink.png',
        'signature': '5d529fd02b544198ae075bd57c1762bb',
        'mimeType': 'image/png',
        'sizeOriginal': 17890,
        'chunksTotal': 17890,
        'chunksUploaded': 17890,
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.updateFile(
        bucketId: '<BUCKET_ID>',
        fileId: '<FILE_ID>',
      );
      expect(response, isA<models.File>());
    });

    test('test method deleteFile()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.deleteFile(
        bucketId: '<BUCKET_ID>',
        fileId: '<FILE_ID>',
      );
    });

    test('test method getFileDownload()', () async {
      final Uint8List data = Uint8List.fromList([]);

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.getFileDownload(
        bucketId: '<BUCKET_ID>',
        fileId: '<FILE_ID>',
      );
      expect(response, isA<Uint8List>());
    });

    test('test method getFilePreview()', () async {
      final Uint8List data = Uint8List.fromList([]);

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.getFilePreview(
        bucketId: '<BUCKET_ID>',
        fileId: '<FILE_ID>',
      );
      expect(response, isA<Uint8List>());
    });

    test('test method getFileView()', () async {
      final Uint8List data = Uint8List.fromList([]);

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await storage.getFileView(
        bucketId: '<BUCKET_ID>',
        fileId: '<FILE_ID>',
      );
      expect(response, isA<Uint8List>());
    });
  });
}
