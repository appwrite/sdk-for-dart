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
    String? path = '',
    Map<String, String>? headers = const {},
    Map<String, dynamic>? params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#call, [method], {
        #path: path,
        #headers: headers,
        #params: params,
        #responseType: responseType,
      }),
      returnValue: Response(),
    );
  }

  @override
  Future<String?> webAuth(Uri? url) async {
    return super.noSuchMethod(
      Invocation.method(#webAuth, [url]),
      returnValue: 'done',
    );
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
    ResponseType? responseType,
    HttpMethod? method = HttpMethod.post,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#chunkedUpload, [], {
        #path: path,
        #params: params,
        #paramName: paramName,
        #idParamName: idParamName,
        #headers: headers,
        #method: method,
      }),
      returnValue: Response(data: {}),
    );
  }
}

void main() {
  group('Users test', () {
    late MockClient client;
    late Users users;

    setUp(() {
      client = MockClient();
      users = Users(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'users': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.list(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "search": "<SEARCH>",
        "total": false,
      });
      expect(response, isA<models.UserList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.create(
        userId: "<USER_ID>",
        email: "email@example.com",
        phone: "+12065550100",
        password: "password",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "userId": "<USER_ID>",
        "email": "email@example.com",
        "phone": "+12065550100",
        "password": "password",
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method createArgon2User()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createArgon2User(
        userId: "<USER_ID>",
        email: "email@example.com",
        password: "\$argon2id\$v=19\$m=65536,t=4,p=1\$NC8xaW1CVXlIZXFSQi9FRg\$0bd4pLo1ytyqvCwl5NSijpm5OIe8J6CjZ1vFemKAg+o",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/argon2",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "userId": "<USER_ID>",
        "email": "email@example.com",
        "password": "\$argon2id\$v=19\$m=65536,t=4,p=1\$NC8xaW1CVXlIZXFSQi9FRg\$0bd4pLo1ytyqvCwl5NSijpm5OIe8J6CjZ1vFemKAg+o",
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method createBcryptUser()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createBcryptUser(
        userId: "<USER_ID>",
        email: "email@example.com",
        password: "\$2y\$10\$vBiMe4NOvlbYL1iJUNdqkO.QJy17fvslZQ5oiqKq1G4uwyRWvdrXC",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/bcrypt",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "userId": "<USER_ID>",
        "email": "email@example.com",
        "password": "\$2y\$10\$vBiMe4NOvlbYL1iJUNdqkO.QJy17fvslZQ5oiqKq1G4uwyRWvdrXC",
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method listIdentities()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'identities': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.listIdentities(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/identities",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "search": "<SEARCH>",
        "total": false,
      });
      expect(response, isA<models.IdentityList>());
    });

    test('test method deleteIdentity()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.deleteIdentity(
        identityId: "<IDENTITY_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/users/identities/%3CIDENTITY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method createMD5User()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createMD5User(
        userId: "<USER_ID>",
        email: "email@example.com",
        password: "password",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/md5",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "userId": "<USER_ID>",
        "email": "email@example.com",
        "password": "password",
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method createPHPassUser()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createPHPassUser(
        userId: "<USER_ID>",
        email: "email@example.com",
        password: "\$P\$BrOEFP1YR5W1yHpvvGuoeVUDPmw9ra/",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/phpass",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "userId": "<USER_ID>",
        "email": "email@example.com",
        "password": "\$P\$BrOEFP1YR5W1yHpvvGuoeVUDPmw9ra/",
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method createScryptUser()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createScryptUser(
        userId: "<USER_ID>",
        email: "email@example.com",
        password: "password",
        passwordSalt: "<PASSWORD_SALT>",
        passwordCpu: 1,
        passwordMemory: 1,
        passwordParallel: 1,
        passwordLength: 1,
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/scrypt",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "userId": "<USER_ID>",
        "email": "email@example.com",
        "password": "password",
        "passwordSalt": "<PASSWORD_SALT>",
        "passwordCpu": 1,
        "passwordMemory": 1,
        "passwordParallel": 1,
        "passwordLength": 1,
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method createScryptModifiedUser()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createScryptModifiedUser(
        userId: "<USER_ID>",
        email: "email@example.com",
        password: "password",
        passwordSalt: "<PASSWORD_SALT>",
        passwordSaltSeparator: "<PASSWORD_SALT_SEPARATOR>",
        passwordSignerKey: "<PASSWORD_SIGNER_KEY>",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/scrypt-modified",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "userId": "<USER_ID>",
        "email": "email@example.com",
        "password": "password",
        "passwordSalt": "<PASSWORD_SALT>",
        "passwordSaltSeparator": "<PASSWORD_SALT_SEPARATOR>",
        "passwordSignerKey": "<PASSWORD_SIGNER_KEY>",
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method createSHAUser()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createSHAUser(
        userId: "<USER_ID>",
        email: "email@example.com",
        password: "password",
        passwordVersion: enums.PasswordHash.sha1,
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/sha",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "userId": "<USER_ID>",
        "email": "email@example.com",
        "password": "password",
        "passwordVersion": enums.PasswordHash.sha1.value,
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.get(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.User>());
    });

    test('test method delete()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.delete(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/users/%3CUSER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updateEmail()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateEmail(
        userId: "<USER_ID>",
        email: "email@example.com",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/email",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "email": "email@example.com",
      });
      expect(response, isA<models.User>());
    });

    test('test method updateImpersonator()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateImpersonator(
        userId: "<USER_ID>",
        impersonator: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/impersonator",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "impersonator": false,
      });
      expect(response, isA<models.User>());
    });

    test('test method createJWT()', () async {
      final Map<String, dynamic> data = {
        'jwt':
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createJWT(
        userId: "<USER_ID>",
        sessionId: "recent()",
        duration: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/%3CUSER_ID%3E/jwts",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "sessionId": "recent()",
        "duration": 1,
      });
      expect(response, isA<models.Jwt>());
    });

    test('test method updateLabels()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateLabels(
        userId: "<USER_ID>",
        labels: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/users/%3CUSER_ID%3E/labels",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "labels": isA<List>(),
      });
      expect(response, isA<models.User>());
    });

    test('test method listMemberships()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'memberships': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.listMemberships(
        userId: "<USER_ID>",
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/memberships",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "search": "<SEARCH>",
        "total": false,
      });
      expect(response, isA<models.MembershipList>());
    });

    test('test method updateMfa()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateMfa(
        userId: "<USER_ID>",
        mfa: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/mfa",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "mfa": false,
      });
      expect(response, isA<models.User>());
    });

    test('test method updateMFA()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateMFA(
        userId: "<USER_ID>",
        mfa: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/mfa",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "mfa": false,
      });
      expect(response, isA<models.User>());
    });

    test('test method deleteMfaAuthenticator()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.deleteMfaAuthenticator(
        userId: "<USER_ID>",
        type: enums.AuthenticatorType.totp,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/users/%3CUSER_ID%3E/mfa/authenticators/totp",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method deleteMFAAuthenticator()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.deleteMFAAuthenticator(
        userId: "<USER_ID>",
        type: enums.AuthenticatorType.totp,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/users/%3CUSER_ID%3E/mfa/authenticators/totp",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method getMFAChallenge()', () async {
      final Map<String, dynamic> data = {
        '\$id': "bb8ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        'userId': "5e5ea5c168bb8",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'code': "446372",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.getMFAChallenge(
        userId: "<USER_ID>",
        challengeId: "<CHALLENGE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/mfa/challenges/%3CCHALLENGE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaChallengeSecret>());
    });

    test('test method listMfaFactors()', () async {
      final Map<String, dynamic> data = {
        'totp': true,
        'phone': true,
        'email': true,
        'recoveryCode': true,
        'custom': true,
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.listMfaFactors(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/mfa/factors",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaFactors>());
    });

    test('test method listMFAFactors()', () async {
      final Map<String, dynamic> data = {
        'totp': true,
        'phone': true,
        'email': true,
        'recoveryCode': true,
        'custom': true,
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.listMFAFactors(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/mfa/factors",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaFactors>());
    });

    test('test method getMfaRecoveryCodes()', () async {
      final Map<String, dynamic> data = {
        'recoveryCodes': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.getMfaRecoveryCodes(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/mfa/recovery-codes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaRecoveryCodes>());
    });

    test('test method getMFARecoveryCodes()', () async {
      final Map<String, dynamic> data = {
        'recoveryCodes': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.getMFARecoveryCodes(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/mfa/recovery-codes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaRecoveryCodes>());
    });

    test('test method updateMfaRecoveryCodes()', () async {
      final Map<String, dynamic> data = {
        'recoveryCodes': [],
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateMfaRecoveryCodes(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/users/%3CUSER_ID%3E/mfa/recovery-codes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaRecoveryCodes>());
    });

    test('test method updateMFARecoveryCodes()', () async {
      final Map<String, dynamic> data = {
        'recoveryCodes': [],
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateMFARecoveryCodes(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/users/%3CUSER_ID%3E/mfa/recovery-codes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaRecoveryCodes>());
    });

    test('test method createMfaRecoveryCodes()', () async {
      final Map<String, dynamic> data = {
        'recoveryCodes': [],
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createMfaRecoveryCodes(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/mfa/recovery-codes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaRecoveryCodes>());
    });

    test('test method createMFARecoveryCodes()', () async {
      final Map<String, dynamic> data = {
        'recoveryCodes': [],
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createMFARecoveryCodes(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/mfa/recovery-codes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.MfaRecoveryCodes>());
    });

    test('test method updateName()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateName(
        userId: "<USER_ID>",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/name",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
      });
      expect(response, isA<models.User>());
    });

    test('test method listPasskeys()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'passkeys': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.listPasskeys(
        userId: "<USER_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/passkeys",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.PasskeyList>());
    });

    test('test method getPasskey()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My laptop",
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.getPasskey(
        userId: "<USER_ID>",
        passkeyId: "<PASSKEY_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/passkeys/%3CPASSKEY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Passkey>());
    });

    test('test method updatePasskey()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My laptop",
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updatePasskey(
        userId: "<USER_ID>",
        passkeyId: "<PASSKEY_ID>",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/passkeys/%3CPASSKEY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
      });
      expect(response, isA<models.Passkey>());
    });

    test('test method deletePasskey()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.deletePasskey(
        userId: "<USER_ID>",
        passkeyId: "<PASSKEY_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/users/%3CUSER_ID%3E/passkeys/%3CPASSKEY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updatePassword()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updatePassword(
        userId: "<USER_ID>",
        password: "password",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/password",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "password": "password",
      });
      expect(response, isA<models.User>());
    });

    test('test method updatePhone()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updatePhone(
        userId: "<USER_ID>",
        number: "+12065550100",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/phone",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "number": "+12065550100",
      });
      expect(response, isA<models.User>());
    });

    test('test method getPrefs()', () async {
      final Map<String, dynamic> data = {};

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.getPrefs(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/prefs",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Preferences>());
    });

    test('test method updatePrefs()', () async {
      final Map<String, dynamic> data = {};

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updatePrefs(
        userId: "<USER_ID>",
        prefs: {},
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/prefs",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "prefs": isA<Map>(),
      });
      expect(response, isA<models.Preferences>());
    });

    test('test method listSessions()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'sessions': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.listSessions(
        userId: "<USER_ID>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/sessions",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "total": false,
      });
      expect(response, isA<models.SessionList>());
    });

    test('test method createSession()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'userId': "5e5bb8c16897e",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'provider': "email",
        'providerUid': "user@example.com",
        'providerAccessToken': "MTQ0NjJkZmQ5OTM2NDE1ZTZjNGZmZjI3",
        'providerAccessTokenExpiry': "2020-10-15T06:38:00.000+00:00",
        'providerRefreshToken': "MTQ0NjJkZmQ5OTM2NDE1ZTZjNGZmZjI3",
        'ip': "127.0.0.1",
        'osCode': "Mac",
        'osName': "Mac",
        'osVersion': "Mac",
        'clientType': "browser",
        'clientCode': "CM",
        'clientName': "Chrome Mobile iOS",
        'clientVersion': "84.0",
        'clientEngine': "WebKit",
        'clientEngineVersion': "605.1.15",
        'deviceName': "smartphone",
        'deviceBrand': "Google",
        'deviceModel': "Nexus 5",
        'countryCode': "US",
        'countryName': "United States",
        'current': true,
        'factors': [],
        'secret': "5e5bb8c16897e",
        'mfaUpdatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createSession(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/%3CUSER_ID%3E/sessions",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Session>());
    });

    test('test method deleteSessions()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.deleteSessions(
        userId: "<USER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/users/%3CUSER_ID%3E/sessions",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method deleteSession()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.deleteSession(
        userId: "<USER_ID>",
        sessionId: "<SESSION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/users/%3CUSER_ID%3E/sessions/%3CSESSION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updateStatus()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateStatus(
        userId: "<USER_ID>",
        status: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/status",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "status": false,
      });
      expect(response, isA<models.User>());
    });

    test('test method listTargets()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'targets': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.listTargets(
        userId: "<USER_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/targets",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.TargetList>());
    });

    test('test method createTarget()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Apple iPhone 12",
        'userId': "259125845563242502",
        'providerType': "email",
        'identifier': "token",
        'expired': true,
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createTarget(
        userId: "<USER_ID>",
        targetId: "<TARGET_ID>",
        providerType: enums.MessagingProviderType.email,
        identifier: "<IDENTIFIER>",
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/%3CUSER_ID%3E/targets",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "targetId": "<TARGET_ID>",
        "providerType": enums.MessagingProviderType.email.value,
        "identifier": "<IDENTIFIER>",
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
      });
      expect(response, isA<models.Target>());
    });

    test('test method getTarget()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Apple iPhone 12",
        'userId': "259125845563242502",
        'providerType': "email",
        'identifier': "token",
        'expired': true,
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.getTarget(
        userId: "<USER_ID>",
        targetId: "<TARGET_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/users/%3CUSER_ID%3E/targets/%3CTARGET_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Target>());
    });

    test('test method updateTarget()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Apple iPhone 12",
        'userId': "259125845563242502",
        'providerType': "email",
        'identifier': "token",
        'expired': true,
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateTarget(
        userId: "<USER_ID>",
        targetId: "<TARGET_ID>",
        identifier: "<IDENTIFIER>",
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/targets/%3CTARGET_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "identifier": "<IDENTIFIER>",
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
      });
      expect(response, isA<models.Target>());
    });

    test('test method deleteTarget()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.deleteTarget(
        userId: "<USER_ID>",
        targetId: "<TARGET_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/users/%3CUSER_ID%3E/targets/%3CTARGET_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method createToken()', () async {
      final Map<String, dynamic> data = {
        '\$id': "bb8ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        'userId': "5e5ea5c168bb8",
        'secret': "",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'phrase': "Golden Fox",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.createToken(
        userId: "<USER_ID>",
        length: 1,
        expire: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/users/%3CUSER_ID%3E/tokens",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "length": 1,
        "expire": 1,
      });
      expect(response, isA<models.Token>());
    });

    test('test method updateEmailVerification()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updateEmailVerification(
        userId: "<USER_ID>",
        emailVerification: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/verification",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "emailVerification": false,
      });
      expect(response, isA<models.User>());
    });

    test('test method updatePhoneVerification()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "John Doe",
        'registration': "2020-10-15T06:38:00.000+00:00",
        'status': true,
        'labels': [],
        'passwordUpdate': "2020-10-15T06:38:00.000+00:00",
        'email': "john@appwrite.io",
        'phone': "+4930901820",
        'emailVerification': true,
        'phoneVerification': true,
        'mfa': true,
        'prefs': <String, dynamic>{},
        'targets': [],
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await users.updatePhoneVerification(
        userId: "<USER_ID>",
        phoneVerification: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/users/%3CUSER_ID%3E/verification/phone",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "phoneVerification": false,
      });
      expect(response, isA<models.User>());
    });
  });
}
