part of '../dart_appwrite.dart';

/// The Users service allows you to manage your project users.
class Users extends Service {
  Users(super.client);

  /// List users
  ///
  /// Get a list of all the project's users. You can use the query params to
  /// filter your results.
  Future<models.UserList> list({List<String>? queries, String? search}) async {
    final String apiPath = '/users';

    final Map<String, dynamic> apiParams = {
      'queries': queries,
      'search': search,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UserList.fromMap(res.data);
  }

  /// Create user
  ///
  /// Create a new user.
  Future<models.User> create(
      {required String userId,
      String? email,
      String? phone,
      String? password,
      String? name}) async {
    final String apiPath = '/users';

    final Map<String, dynamic> apiParams = {
      'userId': userId,
      'email': email,
      'phone': phone,
      'password': password,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Create user with Argon2 password
  ///
  /// Create a new user. Password provided must be hashed with the
  /// [Argon2](https://en.wikipedia.org/wiki/Argon2) algorithm. Use the [POST
  /// /users](https://appwrite.io/docs/server/users#usersCreate) endpoint to
  /// create users with a plain text password.
  Future<models.User> createArgon2User(
      {required String userId,
      required String email,
      required String password,
      String? name}) async {
    final String apiPath = '/users/argon2';

    final Map<String, dynamic> apiParams = {
      'userId': userId,
      'email': email,
      'password': password,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Create user with bcrypt password
  ///
  /// Create a new user. Password provided must be hashed with the
  /// [Bcrypt](https://en.wikipedia.org/wiki/Bcrypt) algorithm. Use the [POST
  /// /users](https://appwrite.io/docs/server/users#usersCreate) endpoint to
  /// create users with a plain text password.
  Future<models.User> createBcryptUser(
      {required String userId,
      required String email,
      required String password,
      String? name}) async {
    final String apiPath = '/users/bcrypt';

    final Map<String, dynamic> apiParams = {
      'userId': userId,
      'email': email,
      'password': password,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// List identities
  ///
  /// Get identities for all users.
  Future<models.IdentityList> listIdentities(
      {List<String>? queries, String? search}) async {
    final String apiPath = '/users/identities';

    final Map<String, dynamic> apiParams = {
      'queries': queries,
      'search': search,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.IdentityList.fromMap(res.data);
  }

  /// Delete identity
  ///
  /// Delete an identity by its unique ID.
  Future deleteIdentity({required String identityId}) async {
    final String apiPath =
        '/users/identities/{identityId}'.replaceAll('{identityId}', identityId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Create user with MD5 password
  ///
  /// Create a new user. Password provided must be hashed with the
  /// [MD5](https://en.wikipedia.org/wiki/MD5) algorithm. Use the [POST
  /// /users](https://appwrite.io/docs/server/users#usersCreate) endpoint to
  /// create users with a plain text password.
  Future<models.User> createMD5User(
      {required String userId,
      required String email,
      required String password,
      String? name}) async {
    final String apiPath = '/users/md5';

    final Map<String, dynamic> apiParams = {
      'userId': userId,
      'email': email,
      'password': password,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Create user with PHPass password
  ///
  /// Create a new user. Password provided must be hashed with the
  /// [PHPass](https://www.openwall.com/phpass/) algorithm. Use the [POST
  /// /users](https://appwrite.io/docs/server/users#usersCreate) endpoint to
  /// create users with a plain text password.
  Future<models.User> createPHPassUser(
      {required String userId,
      required String email,
      required String password,
      String? name}) async {
    final String apiPath = '/users/phpass';

    final Map<String, dynamic> apiParams = {
      'userId': userId,
      'email': email,
      'password': password,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Create user with Scrypt password
  ///
  /// Create a new user. Password provided must be hashed with the
  /// [Scrypt](https://github.com/Tarsnap/scrypt) algorithm. Use the [POST
  /// /users](https://appwrite.io/docs/server/users#usersCreate) endpoint to
  /// create users with a plain text password.
  Future<models.User> createScryptUser(
      {required String userId,
      required String email,
      required String password,
      required String passwordSalt,
      required int passwordCpu,
      required int passwordMemory,
      required int passwordParallel,
      required int passwordLength,
      String? name}) async {
    final String apiPath = '/users/scrypt';

    final Map<String, dynamic> apiParams = {
      'userId': userId,
      'email': email,
      'password': password,
      'passwordSalt': passwordSalt,
      'passwordCpu': passwordCpu,
      'passwordMemory': passwordMemory,
      'passwordParallel': passwordParallel,
      'passwordLength': passwordLength,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Create user with Scrypt modified password
  ///
  /// Create a new user. Password provided must be hashed with the [Scrypt
  /// Modified](https://gist.github.com/Meldiron/eecf84a0225eccb5a378d45bb27462cc)
  /// algorithm. Use the [POST
  /// /users](https://appwrite.io/docs/server/users#usersCreate) endpoint to
  /// create users with a plain text password.
  Future<models.User> createScryptModifiedUser(
      {required String userId,
      required String email,
      required String password,
      required String passwordSalt,
      required String passwordSaltSeparator,
      required String passwordSignerKey,
      String? name}) async {
    final String apiPath = '/users/scrypt-modified';

    final Map<String, dynamic> apiParams = {
      'userId': userId,
      'email': email,
      'password': password,
      'passwordSalt': passwordSalt,
      'passwordSaltSeparator': passwordSaltSeparator,
      'passwordSignerKey': passwordSignerKey,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Create user with SHA password
  ///
  /// Create a new user. Password provided must be hashed with the
  /// [SHA](https://en.wikipedia.org/wiki/Secure_Hash_Algorithm) algorithm. Use
  /// the [POST /users](https://appwrite.io/docs/server/users#usersCreate)
  /// endpoint to create users with a plain text password.
  Future<models.User> createSHAUser(
      {required String userId,
      required String email,
      required String password,
      enums.PasswordHash? passwordVersion,
      String? name}) async {
    final String apiPath = '/users/sha';

    final Map<String, dynamic> apiParams = {
      'userId': userId,
      'email': email,
      'password': password,
      'passwordVersion': passwordVersion?.value,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Get user
  ///
  /// Get a user by its unique ID.
  Future<models.User> get({required String userId}) async {
    final String apiPath = '/users/{userId}'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Delete user
  ///
  /// Delete a user by its unique ID, thereby releasing it's ID. Since ID is
  /// released and can be reused, all user-related resources like documents or
  /// storage files should be deleted before user deletion. If you want to keep
  /// ID reserved, use the
  /// [updateStatus](https://appwrite.io/docs/server/users#usersUpdateStatus)
  /// endpoint instead.
  Future delete({required String userId}) async {
    final String apiPath = '/users/{userId}'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Update email
  ///
  /// Update the user email by its unique ID.
  Future<models.User> updateEmail(
      {required String userId, required String email}) async {
    final String apiPath =
        '/users/{userId}/email'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'email': email,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Create user JWT
  ///
  /// Use this endpoint to create a JSON Web Token for user by its unique ID. You
  /// can use the resulting JWT to authenticate on behalf of the user. The JWT
  /// secret will become invalid if the session it uses gets deleted.
  Future<models.Jwt> createJWT(
      {required String userId, String? sessionId, int? duration}) async {
    final String apiPath =
        '/users/{userId}/jwts'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'sessionId': sessionId,
      'duration': duration,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Jwt.fromMap(res.data);
  }

  /// Update user labels
  ///
  /// Update the user labels by its unique ID.
  ///
  /// Labels can be used to grant access to resources. While teams are a way for
  /// user's to share access to a resource, labels can be defined by the
  /// developer to grant access without an invitation. See the [Permissions
  /// docs](https://appwrite.io/docs/permissions) for more info.
  Future<models.User> updateLabels(
      {required String userId, required List<String> labels}) async {
    final String apiPath =
        '/users/{userId}/labels'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'labels': labels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// List user logs
  ///
  /// Get the user activity logs list by its unique ID.
  Future<models.LogList> listLogs(
      {required String userId, List<String>? queries}) async {
    final String apiPath =
        '/users/{userId}/logs'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'queries': queries,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.LogList.fromMap(res.data);
  }

  /// List user memberships
  ///
  /// Get the user membership list by its unique ID.
  Future<models.MembershipList> listMemberships(
      {required String userId}) async {
    final String apiPath =
        '/users/{userId}/memberships'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MembershipList.fromMap(res.data);
  }

  /// Update MFA
  ///
  /// Enable or disable MFA on a user account.
  Future<models.User> updateMfa(
      {required String userId, required bool mfa}) async {
    final String apiPath = '/users/{userId}/mfa'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'mfa': mfa,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Delete authenticator
  ///
  /// Delete an authenticator app.
  Future deleteMfaAuthenticator(
      {required String userId, required enums.AuthenticatorType type}) async {
    final String apiPath = '/users/{userId}/mfa/authenticators/{type}'
        .replaceAll('{userId}', userId)
        .replaceAll('{type}', type.value);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// List factors
  ///
  /// List the factors available on the account to be used as a MFA challange.
  Future<models.MfaFactors> listMfaFactors({required String userId}) async {
    final String apiPath =
        '/users/{userId}/mfa/factors'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MfaFactors.fromMap(res.data);
  }

  /// Get MFA recovery codes
  ///
  /// Get recovery codes that can be used as backup for MFA flow by User ID.
  /// Before getting codes, they must be generated using
  /// [createMfaRecoveryCodes](/docs/references/cloud/client-web/account#createMfaRecoveryCodes)
  /// method.
  Future<models.MfaRecoveryCodes> getMfaRecoveryCodes(
      {required String userId}) async {
    final String apiPath =
        '/users/{userId}/mfa/recovery-codes'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MfaRecoveryCodes.fromMap(res.data);
  }

  /// Regenerate MFA recovery codes
  ///
  /// Regenerate recovery codes that can be used as backup for MFA flow by User
  /// ID. Before regenerating codes, they must be first generated using
  /// [createMfaRecoveryCodes](/docs/references/cloud/client-web/account#createMfaRecoveryCodes)
  /// method.
  Future<models.MfaRecoveryCodes> updateMfaRecoveryCodes(
      {required String userId}) async {
    final String apiPath =
        '/users/{userId}/mfa/recovery-codes'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MfaRecoveryCodes.fromMap(res.data);
  }

  /// Create MFA recovery codes
  ///
  /// Generate recovery codes used as backup for MFA flow for User ID. Recovery
  /// codes can be used as a MFA verification type in
  /// [createMfaChallenge](/docs/references/cloud/client-web/account#createMfaChallenge)
  /// method by client SDK.
  Future<models.MfaRecoveryCodes> createMfaRecoveryCodes(
      {required String userId}) async {
    final String apiPath =
        '/users/{userId}/mfa/recovery-codes'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MfaRecoveryCodes.fromMap(res.data);
  }

  /// Update name
  ///
  /// Update the user name by its unique ID.
  Future<models.User> updateName(
      {required String userId, required String name}) async {
    final String apiPath =
        '/users/{userId}/name'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Update password
  ///
  /// Update the user password by its unique ID.
  Future<models.User> updatePassword(
      {required String userId, required String password}) async {
    final String apiPath =
        '/users/{userId}/password'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'password': password,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Update phone
  ///
  /// Update the user phone by its unique ID.
  Future<models.User> updatePhone(
      {required String userId, required String number}) async {
    final String apiPath =
        '/users/{userId}/phone'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'number': number,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Get user preferences
  ///
  /// Get the user preferences by its unique ID.
  Future<models.Preferences> getPrefs({required String userId}) async {
    final String apiPath =
        '/users/{userId}/prefs'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Preferences.fromMap(res.data);
  }

  /// Update user preferences
  ///
  /// Update the user preferences by its unique ID. The object you pass is stored
  /// as is, and replaces any previous value. The maximum allowed prefs size is
  /// 64kB and throws error if exceeded.
  Future<models.Preferences> updatePrefs(
      {required String userId, required Map prefs}) async {
    final String apiPath =
        '/users/{userId}/prefs'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'prefs': prefs,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Preferences.fromMap(res.data);
  }

  /// List user sessions
  ///
  /// Get the user sessions list by its unique ID.
  Future<models.SessionList> listSessions({required String userId}) async {
    final String apiPath =
        '/users/{userId}/sessions'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.SessionList.fromMap(res.data);
  }

  /// Create session
  ///
  /// Creates a session for a user. Returns an immediately usable session object.
  ///
  /// If you want to generate a token for a custom authentication flow, use the
  /// [POST
  /// /users/{userId}/tokens](https://appwrite.io/docs/server/users#createToken)
  /// endpoint.
  Future<models.Session> createSession({required String userId}) async {
    final String apiPath =
        '/users/{userId}/sessions'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Session.fromMap(res.data);
  }

  /// Delete user sessions
  ///
  /// Delete all user's sessions by using the user's unique ID.
  Future deleteSessions({required String userId}) async {
    final String apiPath =
        '/users/{userId}/sessions'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Delete user session
  ///
  /// Delete a user sessions by its unique ID.
  Future deleteSession(
      {required String userId, required String sessionId}) async {
    final String apiPath = '/users/{userId}/sessions/{sessionId}'
        .replaceAll('{userId}', userId)
        .replaceAll('{sessionId}', sessionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Update user status
  ///
  /// Update the user status by its unique ID. Use this endpoint as an
  /// alternative to deleting a user if you want to keep user's ID reserved.
  Future<models.User> updateStatus(
      {required String userId, required bool status}) async {
    final String apiPath =
        '/users/{userId}/status'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'status': status,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// List user targets
  ///
  /// List the messaging targets that are associated with a user.
  Future<models.TargetList> listTargets(
      {required String userId, List<String>? queries}) async {
    final String apiPath =
        '/users/{userId}/targets'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'queries': queries,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.TargetList.fromMap(res.data);
  }

  /// Create user target
  ///
  /// Create a messaging target.
  Future<models.Target> createTarget(
      {required String userId,
      required String targetId,
      required enums.MessagingProviderType providerType,
      required String identifier,
      String? providerId,
      String? name}) async {
    final String apiPath =
        '/users/{userId}/targets'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'targetId': targetId,
      'providerType': providerType.value,
      'identifier': identifier,
      'providerId': providerId,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Target.fromMap(res.data);
  }

  /// Get user target
  ///
  /// Get a user's push notification target by ID.
  Future<models.Target> getTarget(
      {required String userId, required String targetId}) async {
    final String apiPath = '/users/{userId}/targets/{targetId}'
        .replaceAll('{userId}', userId)
        .replaceAll('{targetId}', targetId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Target.fromMap(res.data);
  }

  /// Update user target
  ///
  /// Update a messaging target.
  Future<models.Target> updateTarget(
      {required String userId,
      required String targetId,
      String? identifier,
      String? providerId,
      String? name}) async {
    final String apiPath = '/users/{userId}/targets/{targetId}'
        .replaceAll('{userId}', userId)
        .replaceAll('{targetId}', targetId);

    final Map<String, dynamic> apiParams = {
      'identifier': identifier,
      'providerId': providerId,
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Target.fromMap(res.data);
  }

  /// Delete user target
  ///
  /// Delete a messaging target.
  Future deleteTarget(
      {required String userId, required String targetId}) async {
    final String apiPath = '/users/{userId}/targets/{targetId}'
        .replaceAll('{userId}', userId)
        .replaceAll('{targetId}', targetId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Create token
  ///
  /// Returns a token with a secret key for creating a session. Use the user ID
  /// and secret and submit a request to the [PUT
  /// /account/sessions/token](https://appwrite.io/docs/references/cloud/client-web/account#createSession)
  /// endpoint to complete the login process.
  ///
  Future<models.Token> createToken(
      {required String userId, int? length, int? expire}) async {
    final String apiPath =
        '/users/{userId}/tokens'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'length': length,
      'expire': expire,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Token.fromMap(res.data);
  }

  /// Update email verification
  ///
  /// Update the user email verification status by its unique ID.
  Future<models.User> updateEmailVerification(
      {required String userId, required bool emailVerification}) async {
    final String apiPath =
        '/users/{userId}/verification'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'emailVerification': emailVerification,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }

  /// Update phone verification
  ///
  /// Update the user phone verification status by its unique ID.
  Future<models.User> updatePhoneVerification(
      {required String userId, required bool phoneVerification}) async {
    final String apiPath =
        '/users/{userId}/verification/phone'.replaceAll('{userId}', userId);

    final Map<String, dynamic> apiParams = {
      'phoneVerification': phoneVerification,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.User.fromMap(res.data);
  }
}
