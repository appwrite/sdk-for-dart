part of dart_appwrite;

/// The Account service allows you to authenticate and manage a user account.
class Account extends Service {
    Account(super.client);

    /// Get account
    ///
    /// Get the currently logged in user.
    Future<models.User> get() async {
        final String apiPath = '/account';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.User.fromMap(res.data);

    }

    /// Update email
    ///
    /// Update currently logged in user account email address. After changing user
    /// address, the user confirmation status will get reset. A new confirmation
    /// email is not sent automatically however you can use the send confirmation
    /// email endpoint again to send the confirmation email. For security measures,
    /// user password is required to complete this request.
    /// This endpoint can also be used to convert an anonymous account to a normal
    /// one, by passing an email address and a new password.
    /// 
    Future<models.User> updateEmail({required String email, required String password}) async {
        final String apiPath = '/account/email';

        final Map<String, dynamic> apiParams = {
            
            'email': email,
'password': password,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.User.fromMap(res.data);

    }

    /// List Identities
    ///
    /// Get the list of identities for the currently logged in user.
    Future<models.IdentityList> listIdentities({String? queries}) async {
        final String apiPath = '/account/identities';

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.IdentityList.fromMap(res.data);

    }

    /// Delete Identity
    ///
    /// Delete an identity by its unique ID.
    Future deleteIdentity({required String identityId}) async {
        final String apiPath = '/account/identities/{identityId}'.replaceAll('{identityId}', identityId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// List logs
    ///
    /// Get the list of latest security activity logs for the currently logged in
    /// user. Each log returns user IP address, location and date and time of log.
    Future<models.LogList> listLogs({List<String>? queries}) async {
        final String apiPath = '/account/logs';

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

    }

    /// Update name
    ///
    /// Update currently logged in user account name.
    Future<models.User> updateName({required String name}) async {
        final String apiPath = '/account/name';

        final Map<String, dynamic> apiParams = {
            
            'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.User.fromMap(res.data);

    }

    /// Update password
    ///
    /// Update currently logged in user password. For validation, user is required
    /// to pass in the new password, and the old password. For users created with
    /// OAuth, Team Invites and Magic URL, oldPassword is optional.
    Future<models.User> updatePassword({required String password, String? oldPassword}) async {
        final String apiPath = '/account/password';

        final Map<String, dynamic> apiParams = {
            
            'password': password,
'oldPassword': oldPassword,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.User.fromMap(res.data);

    }

    /// Update phone
    ///
    /// Update the currently logged in user's phone number. After updating the
    /// phone number, the phone verification status will be reset. A confirmation
    /// SMS is not sent automatically, however you can use the [POST
    /// /account/verification/phone](https://appwrite.io/docs/references/cloud/client-web/account#createPhoneVerification)
    /// endpoint to send a confirmation SMS.
    Future<models.User> updatePhone({required String phone, required String password}) async {
        final String apiPath = '/account/phone';

        final Map<String, dynamic> apiParams = {
            
            'phone': phone,
'password': password,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.User.fromMap(res.data);

    }

    /// Get account preferences
    ///
    /// Get the preferences as a key-value object for the currently logged in user.
    Future<models.Preferences> getPrefs() async {
        final String apiPath = '/account/prefs';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Preferences.fromMap(res.data);

    }

    /// Update preferences
    ///
    /// Update currently logged in user account preferences. The object you pass is
    /// stored as is, and replaces any previous value. The maximum allowed prefs
    /// size is 64kB and throws error if exceeded.
    Future<models.User> updatePrefs({required Map prefs}) async {
        final String apiPath = '/account/prefs';

        final Map<String, dynamic> apiParams = {
            
            'prefs': prefs,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.User.fromMap(res.data);

    }

    /// Create password recovery
    ///
    /// Sends the user an email with a temporary secret key for password reset.
    /// When the user clicks the confirmation link he is redirected back to your
    /// app password reset URL with the secret key and email address values
    /// attached to the URL query string. Use the query string params to submit a
    /// request to the [PUT
    /// /account/recovery](https://appwrite.io/docs/references/cloud/client-web/account#updateRecovery)
    /// endpoint to complete the process. The verification link sent to the user's
    /// email address is valid for 1 hour.
    Future<models.Token> createRecovery({required String email, required String url}) async {
        final String apiPath = '/account/recovery';

        final Map<String, dynamic> apiParams = {
            
            'email': email,
'url': url,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Token.fromMap(res.data);

    }

    /// Create password recovery (confirmation)
    ///
    /// Use this endpoint to complete the user account password reset. Both the
    /// **userId** and **secret** arguments will be passed as query parameters to
    /// the redirect URL you have provided when sending your request to the [POST
    /// /account/recovery](https://appwrite.io/docs/references/cloud/client-web/account#createRecovery)
    /// endpoint.
    /// 
    /// Please note that in order to avoid a [Redirect
    /// Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md)
    /// the only valid redirect URLs are the ones from domains you have set when
    /// adding your platforms in the console interface.
    Future<models.Token> updateRecovery({required String userId, required String secret, required String password, required String passwordAgain}) async {
        final String apiPath = '/account/recovery';

        final Map<String, dynamic> apiParams = {
            
            'userId': userId,
'secret': secret,
'password': password,
'passwordAgain': passwordAgain,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Token.fromMap(res.data);

    }

    /// List sessions
    ///
    /// Get the list of active sessions across different devices for the currently
    /// logged in user.
    Future<models.SessionList> listSessions() async {
        final String apiPath = '/account/sessions';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.SessionList.fromMap(res.data);

    }

    /// Delete sessions
    ///
    /// Delete all sessions from the user account and remove any sessions cookies
    /// from the end client.
    Future deleteSessions() async {
        final String apiPath = '/account/sessions';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// Get session
    ///
    /// Use this endpoint to get a logged in user's session using a Session ID.
    /// Inputting 'current' will return the current session being used.
    Future<models.Session> getSession({required String sessionId}) async {
        final String apiPath = '/account/sessions/{sessionId}'.replaceAll('{sessionId}', sessionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Session.fromMap(res.data);

    }

    /// Update OAuth session (refresh tokens)
    ///
    /// Access tokens have limited lifespan and expire to mitigate security risks.
    /// If session was created using an OAuth provider, this route can be used to
    /// "refresh" the access token.
    Future<models.Session> updateSession({required String sessionId}) async {
        final String apiPath = '/account/sessions/{sessionId}'.replaceAll('{sessionId}', sessionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Session.fromMap(res.data);

    }

    /// Delete session
    ///
    /// Logout the user. Use 'current' as the session ID to logout on this device,
    /// use a session ID to logout on another device. If you're looking to logout
    /// the user on all devices, use [Delete
    /// Sessions](https://appwrite.io/docs/references/cloud/client-web/account#deleteSessions)
    /// instead.
    Future deleteSession({required String sessionId}) async {
        final String apiPath = '/account/sessions/{sessionId}'.replaceAll('{sessionId}', sessionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// Update status
    ///
    /// Block the currently logged in user account. Behind the scene, the user
    /// record is not deleted but permanently blocked from any access. To
    /// completely delete a user, use the Users API instead.
    Future<models.User> updateStatus() async {
        final String apiPath = '/account/status';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.User.fromMap(res.data);

    }

    /// Create email verification
    ///
    /// Use this endpoint to send a verification message to your user email address
    /// to confirm they are the valid owners of that address. Both the **userId**
    /// and **secret** arguments will be passed as query parameters to the URL you
    /// have provided to be attached to the verification email. The provided URL
    /// should redirect the user back to your app and allow you to complete the
    /// verification process by verifying both the **userId** and **secret**
    /// parameters. Learn more about how to [complete the verification
    /// process](https://appwrite.io/docs/references/cloud/client-web/account#updateVerification).
    /// The verification link sent to the user's email address is valid for 7 days.
    /// 
    /// Please note that in order to avoid a [Redirect
    /// Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md),
    /// the only valid redirect URLs are the ones from domains you have set when
    /// adding your platforms in the console interface.
    /// 
    Future<models.Token> createVerification({required String url}) async {
        final String apiPath = '/account/verification';

        final Map<String, dynamic> apiParams = {
            
            'url': url,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Token.fromMap(res.data);

    }

    /// Create email verification (confirmation)
    ///
    /// Use this endpoint to complete the user email verification process. Use both
    /// the **userId** and **secret** parameters that were attached to your app URL
    /// to verify the user email ownership. If confirmed this route will return a
    /// 200 status code.
    Future<models.Token> updateVerification({required String userId, required String secret}) async {
        final String apiPath = '/account/verification';

        final Map<String, dynamic> apiParams = {
            
            'userId': userId,
'secret': secret,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Token.fromMap(res.data);

    }

    /// Create phone verification
    ///
    /// Use this endpoint to send a verification SMS to the currently logged in
    /// user. This endpoint is meant for use after updating a user's phone number
    /// using the
    /// [accountUpdatePhone](https://appwrite.io/docs/references/cloud/client-web/account#updatePhone)
    /// endpoint. Learn more about how to [complete the verification
    /// process](https://appwrite.io/docs/references/cloud/client-web/account#updatePhoneVerification).
    /// The verification code sent to the user's phone number is valid for 15
    /// minutes.
    Future<models.Token> createPhoneVerification() async {
        final String apiPath = '/account/verification/phone';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Token.fromMap(res.data);

    }

    /// Create phone verification (confirmation)
    ///
    /// Use this endpoint to complete the user phone verification process. Use the
    /// **userId** and **secret** that were sent to your user's phone number to
    /// verify the user email ownership. If confirmed this route will return a 200
    /// status code.
    Future<models.Token> updatePhoneVerification({required String userId, required String secret}) async {
        final String apiPath = '/account/verification/phone';

        final Map<String, dynamic> apiParams = {
            
            'userId': userId,
'secret': secret,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Token.fromMap(res.data);

    }
}