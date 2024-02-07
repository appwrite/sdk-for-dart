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
                'users': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.list(
            );
            expect(response, isA<models.UserList>());

        });

        test('test method create()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.create(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.User>());

        });

        test('test method createArgon2User()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createArgon2User(
                userId: '[USER_ID]',
                email: 'email@example.com',
                password: 'password',
            );
            expect(response, isA<models.User>());

        });

        test('test method createBcryptUser()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createBcryptUser(
                userId: '[USER_ID]',
                email: 'email@example.com',
                password: 'password',
            );
            expect(response, isA<models.User>());

        });

        test('test method listIdentities()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'identities': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.listIdentities(
            );
            expect(response, isA<models.IdentityList>());

        });

        test('test method deleteIdentity()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.deleteIdentity(
                identityId: '[IDENTITY_ID]',
            );
        });

        test('test method createMD5User()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createMD5User(
                userId: '[USER_ID]',
                email: 'email@example.com',
                password: 'password',
            );
            expect(response, isA<models.User>());

        });

        test('test method createPHPassUser()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createPHPassUser(
                userId: '[USER_ID]',
                email: 'email@example.com',
                password: 'password',
            );
            expect(response, isA<models.User>());

        });

        test('test method createScryptUser()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createScryptUser(
                userId: '[USER_ID]',
                email: 'email@example.com',
                password: 'password',
                passwordSalt: '[PASSWORD_SALT]',
                passwordCpu: 1,
                passwordMemory: 1,
                passwordParallel: 1,
                passwordLength: 1,
            );
            expect(response, isA<models.User>());

        });

        test('test method createScryptModifiedUser()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createScryptModifiedUser(
                userId: '[USER_ID]',
                email: 'email@example.com',
                password: 'password',
                passwordSalt: '[PASSWORD_SALT]',
                passwordSaltSeparator: '[PASSWORD_SALT_SEPARATOR]',
                passwordSignerKey: '[PASSWORD_SIGNER_KEY]',
            );
            expect(response, isA<models.User>());

        });

        test('test method createSHAUser()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createSHAUser(
                userId: '[USER_ID]',
                email: 'email@example.com',
                password: 'password',
            );
            expect(response, isA<models.User>());

        });

        test('test method get()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.get(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.User>());

        });

        test('test method delete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.delete(
                userId: '[USER_ID]',
            );
        });

        test('test method updateEmail()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updateEmail(
                userId: '[USER_ID]',
                email: 'email@example.com',
            );
            expect(response, isA<models.User>());

        });

        test('test method updateLabels()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updateLabels(
                userId: '[USER_ID]',
                labels: [],
            );
            expect(response, isA<models.User>());

        });

        test('test method listLogs()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'logs': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.listLogs(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method listMemberships()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'memberships': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.listMemberships(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.MembershipList>());

        });

        test('test method updateMfa()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updateMfa(
                userId: '[USER_ID]',
                mfa: true,
            );
            expect(response, isA<models.User>());

        });

        test('test method deleteAuthenticator()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.deleteAuthenticator(
                userId: '[USER_ID]',
                provider: 'totp',
                otp: '[OTP]',
            );
            expect(response, isA<models.User>());

        });

        test('test method updateName()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updateName(
                userId: '[USER_ID]',
                name: '[NAME]',
            );
            expect(response, isA<models.User>());

        });

        test('test method updatePassword()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updatePassword(
                userId: '[USER_ID]',
                password: '',
            );
            expect(response, isA<models.User>());

        });

        test('test method updatePhone()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updatePhone(
                userId: '[USER_ID]',
                number: '+12065550100',
            );
            expect(response, isA<models.User>());

        });

        test('test method getPrefs()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.getPrefs(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.Preferences>());

        });

        test('test method updatePrefs()', () async {
            final Map<String, dynamic> data = {};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updatePrefs(
                userId: '[USER_ID]',
                prefs: {},
            );
            expect(response, isA<models.Preferences>());

        });

        test('test method listProviders()', () async {
            final Map<String, dynamic> data = {
                'totp': true,
                'phone': true,
                'email': true,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.listProviders(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.MfaProviders>());

        });

        test('test method listSessions()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'sessions': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.listSessions(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.SessionList>());

        });

        test('test method createSession()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                'userId': '5e5bb8c16897e',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'provider': 'email',
                'providerUid': 'user@example.com',
                'providerAccessToken': 'MTQ0NjJkZmQ5OTM2NDE1ZTZjNGZmZjI3',
                'providerAccessTokenExpiry': '2020-10-15T06:38:00.000+00:00',
                'providerRefreshToken': 'MTQ0NjJkZmQ5OTM2NDE1ZTZjNGZmZjI3',
                'ip': '127.0.0.1',
                'osCode': 'Mac',
                'osName': 'Mac',
                'osVersion': 'Mac',
                'clientType': 'browser',
                'clientCode': 'CM',
                'clientName': 'Chrome Mobile iOS',
                'clientVersion': '84.0',
                'clientEngine': 'WebKit',
                'clientEngineVersion': '605.1.15',
                'deviceName': 'smartphone',
                'deviceBrand': 'Google',
                'deviceModel': 'Nexus 5',
                'countryCode': 'US',
                'countryName': 'United States',
                'current': true,
                'factors': [],
                'secret': '5e5bb8c16897e',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createSession(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.Session>());

        });

        test('test method deleteSessions()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.deleteSessions(
                userId: '[USER_ID]',
            );
        });

        test('test method deleteSession()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.deleteSession(
                userId: '[USER_ID]',
                sessionId: '[SESSION_ID]',
            );
        });

        test('test method updateStatus()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updateStatus(
                userId: '[USER_ID]',
                status: true,
            );
            expect(response, isA<models.User>());

        });

        test('test method listTargets()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'targets': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.listTargets(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.TargetList>());

        });

        test('test method createTarget()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Aegon apple token',
                'userId': '259125845563242502',
                'providerType': 'email',
                'identifier': 'token',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createTarget(
                userId: '[USER_ID]',
                targetId: '[TARGET_ID]',
                providerType: 'email',
                identifier: '[IDENTIFIER]',
            );
            expect(response, isA<models.Target>());

        });

        test('test method getTarget()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Aegon apple token',
                'userId': '259125845563242502',
                'providerType': 'email',
                'identifier': 'token',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.getTarget(
                userId: '[USER_ID]',
                targetId: '[TARGET_ID]',
            );
            expect(response, isA<models.Target>());

        });

        test('test method updateTarget()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Aegon apple token',
                'userId': '259125845563242502',
                'providerType': 'email',
                'identifier': 'token',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updateTarget(
                userId: '[USER_ID]',
                targetId: '[TARGET_ID]',
            );
            expect(response, isA<models.Target>());

        });

        test('test method deleteTarget()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.deleteTarget(
                userId: '[USER_ID]',
                targetId: '[TARGET_ID]',
            );
        });

        test('test method createToken()', () async {
            final Map<String, dynamic> data = {
                '\$id': 'bb8ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                'userId': '5e5ea5c168bb8',
                'secret': '',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'phrase': 'Golden Fox',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.createToken(
                userId: '[USER_ID]',
            );
            expect(response, isA<models.Token>());

        });

        test('test method updateEmailVerification()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updateEmailVerification(
                userId: '[USER_ID]',
                emailVerification: true,
            );
            expect(response, isA<models.User>());

        });

        test('test method updatePhoneVerification()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'John Doe',
                'registration': '2020-10-15T06:38:00.000+00:00',
                'status': true,
                'labels': [],
                'passwordUpdate': '2020-10-15T06:38:00.000+00:00',
                'email': 'john@appwrite.io',
                'phone': '+4930901820',
                'emailVerification': true,
                'phoneVerification': true,
                'mfa': true,
                'totp': true,
                'prefs': <String, dynamic>{},
                'targets': [],
                'accessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await users.updatePhoneVerification(
                userId: '[USER_ID]',
                phoneVerification: true,
            );
            expect(response, isA<models.User>());

        });

    });
}