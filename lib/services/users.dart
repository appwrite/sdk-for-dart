part of dart_appwrite;

    /// The Users service allows you to manage your project users.
class Users extends Service {
    Users(super.client);

    /// List Users
    ///
    /// Get a list of all the project's users. You can use the query params to
    /// filter your results.
    ///
    Future<models.UserList> list({List<String>? queries, String? search}) async {
        final String path = '/users';

        final Map<String, dynamic> params = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.UserList.fromMap(res.data);


    }
    /// Create User
    ///
    /// Create a new user.
    ///
    Future<models.User> create({required String userId, String? email, String? phone, String? password, String? name}) async {
        final String path = '/users';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'email': email,
'phone': phone,
'password': password,
'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Create User with Argon2 Password
    ///
    /// Create a new user. Password provided must be hashed with the
    /// [Argon2](https://en.wikipedia.org/wiki/Argon2) algorithm. Use the [POST
    /// /users](/docs/server/users#usersCreate) endpoint to create users with a
    /// plain text password.
    ///
    Future<models.User> createArgon2User({required String userId, required String email, required String password, String? name}) async {
        final String path = '/users/argon2';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'email': email,
'password': password,
'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Create User with Bcrypt Password
    ///
    /// Create a new user. Password provided must be hashed with the
    /// [Bcrypt](https://en.wikipedia.org/wiki/Bcrypt) algorithm. Use the [POST
    /// /users](/docs/server/users#usersCreate) endpoint to create users with a
    /// plain text password.
    ///
    Future<models.User> createBcryptUser({required String userId, required String email, required String password, String? name}) async {
        final String path = '/users/bcrypt';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'email': email,
'password': password,
'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Create User with MD5 Password
    ///
    /// Create a new user. Password provided must be hashed with the
    /// [MD5](https://en.wikipedia.org/wiki/MD5) algorithm. Use the [POST
    /// /users](/docs/server/users#usersCreate) endpoint to create users with a
    /// plain text password.
    ///
    Future<models.User> createMD5User({required String userId, required String email, required String password, String? name}) async {
        final String path = '/users/md5';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'email': email,
'password': password,
'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Create User with PHPass Password
    ///
    /// Create a new user. Password provided must be hashed with the
    /// [PHPass](https://www.openwall.com/phpass/) algorithm. Use the [POST
    /// /users](/docs/server/users#usersCreate) endpoint to create users with a
    /// plain text password.
    ///
    Future<models.User> createPHPassUser({required String userId, required String email, required String password, String? name}) async {
        final String path = '/users/phpass';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'email': email,
'password': password,
'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Create User with Scrypt Password
    ///
    /// Create a new user. Password provided must be hashed with the
    /// [Scrypt](https://github.com/Tarsnap/scrypt) algorithm. Use the [POST
    /// /users](/docs/server/users#usersCreate) endpoint to create users with a
    /// plain text password.
    ///
    Future<models.User> createScryptUser({required String userId, required String email, required String password, required String passwordSalt, required int passwordCpu, required int passwordMemory, required int passwordParallel, required int passwordLength, String? name}) async {
        final String path = '/users/scrypt';

        final Map<String, dynamic> params = {
            
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

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Create User with Scrypt Modified Password
    ///
    /// Create a new user. Password provided must be hashed with the [Scrypt
    /// Modified](https://gist.github.com/Meldiron/eecf84a0225eccb5a378d45bb27462cc)
    /// algorithm. Use the [POST /users](/docs/server/users#usersCreate) endpoint
    /// to create users with a plain text password.
    ///
    Future<models.User> createScryptModifiedUser({required String userId, required String email, required String password, required String passwordSalt, required String passwordSaltSeparator, required String passwordSignerKey, String? name}) async {
        final String path = '/users/scrypt-modified';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'email': email,
'password': password,
'passwordSalt': passwordSalt,
'passwordSaltSeparator': passwordSaltSeparator,
'passwordSignerKey': passwordSignerKey,
'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Create User with SHA Password
    ///
    /// Create a new user. Password provided must be hashed with the
    /// [SHA](https://en.wikipedia.org/wiki/Secure_Hash_Algorithm) algorithm. Use
    /// the [POST /users](/docs/server/users#usersCreate) endpoint to create users
    /// with a plain text password.
    ///
    Future<models.User> createSHAUser({required String userId, required String email, required String password, String? passwordVersion, String? name}) async {
        final String path = '/users/sha';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'email': email,
'password': password,
'passwordVersion': passwordVersion,
'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Get User
    ///
    /// Get a user by its unique ID.
    ///
    Future<models.User> get({required String userId}) async {
        final String path = '/users/{userId}'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Delete User
    ///
    /// Delete a user by its unique ID, thereby releasing it's ID. Since ID is
    /// released and can be reused, all user-related resources like documents or
    /// storage files should be deleted before user deletion. If you want to keep
    /// ID reserved, use the [updateStatus](/docs/server/users#usersUpdateStatus)
    /// endpoint instead.
    ///
    Future delete({required String userId}) async {
        final String path = '/users/{userId}'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
    /// Update Email
    ///
    /// Update the user email by its unique ID.
    ///
    Future<models.User> updateEmail({required String userId, required String email}) async {
        final String path = '/users/{userId}/email'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            'email': email,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// List User Logs
    ///
    /// Get the user activity logs list by its unique ID.
    ///
    Future<models.LogList> listLogs({required String userId, List<String>? queries}) async {
        final String path = '/users/{userId}/logs'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            'queries': queries,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.LogList.fromMap(res.data);


    }
    /// List User Memberships
    ///
    /// Get the user membership list by its unique ID.
    ///
    Future<models.MembershipList> listMemberships({required String userId}) async {
        final String path = '/users/{userId}/memberships'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.MembershipList.fromMap(res.data);


    }
    /// Update Name
    ///
    /// Update the user name by its unique ID.
    ///
    Future<models.User> updateName({required String userId, required String name}) async {
        final String path = '/users/{userId}/name'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Update Password
    ///
    /// Update the user password by its unique ID.
    ///
    Future<models.User> updatePassword({required String userId, required String password}) async {
        final String path = '/users/{userId}/password'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            'password': password,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Update Phone
    ///
    /// Update the user phone by its unique ID.
    ///
    Future<models.User> updatePhone({required String userId, required String number}) async {
        final String path = '/users/{userId}/phone'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            'number': number,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Get User Preferences
    ///
    /// Get the user preferences by its unique ID.
    ///
    Future<models.Preferences> getPrefs({required String userId}) async {
        final String path = '/users/{userId}/prefs'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Preferences.fromMap(res.data);


    }
    /// Update User Preferences
    ///
    /// Update the user preferences by its unique ID. The object you pass is stored
    /// as is, and replaces any previous value. The maximum allowed prefs size is
    /// 64kB and throws error if exceeded.
    ///
    Future<models.Preferences> updatePrefs({required String userId, required Map prefs}) async {
        final String path = '/users/{userId}/prefs'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            'prefs': prefs,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Preferences.fromMap(res.data);


    }
    /// List User Sessions
    ///
    /// Get the user sessions list by its unique ID.
    ///
    Future<models.SessionList> listSessions({required String userId}) async {
        final String path = '/users/{userId}/sessions'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.SessionList.fromMap(res.data);


    }
    /// Delete User Sessions
    ///
    /// Delete all user's sessions by using the user's unique ID.
    ///
    Future deleteSessions({required String userId}) async {
        final String path = '/users/{userId}/sessions'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
    /// Delete User Session
    ///
    /// Delete a user sessions by its unique ID.
    ///
    Future deleteSession({required String userId, required String sessionId}) async {
        final String path = '/users/{userId}/sessions/{sessionId}'.replaceAll('{userId}', userId).replaceAll('{sessionId}', sessionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
    /// Update User Status
    ///
    /// Update the user status by its unique ID. Use this endpoint as an
    /// alternative to deleting a user if you want to keep user's ID reserved.
    ///
    Future<models.User> updateStatus({required String userId, required bool status}) async {
        final String path = '/users/{userId}/status'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            'status': status,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Update Email Verification
    ///
    /// Update the user email verification status by its unique ID.
    ///
    Future<models.User> updateEmailVerification({required String userId, required bool emailVerification}) async {
        final String path = '/users/{userId}/verification'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            'emailVerification': emailVerification,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
    /// Update Phone Verification
    ///
    /// Update the user phone verification status by its unique ID.
    ///
    Future<models.User> updatePhoneVerification({required String userId, required bool phoneVerification}) async {
        final String path = '/users/{userId}/verification/phone'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            
            'phoneVerification': phoneVerification,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.User.fromMap(res.data);


    }
}