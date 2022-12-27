part of dart_appwrite;

    /// The Account service allows you to authenticate and manage a user account.
class Account extends Service {
    Account(super.client);

    /// Get Account
    ///
    /// Get currently logged in user data as JSON object.
    ///
    Future<models.Account> get() async {
        final String path = '/account';

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Account.fromMap(res.data);


    }
    /// Update Email
    ///
    /// Update currently logged in user account email address. After changing user
    /// address, the user confirmation status will get reset. A new confirmation
    /// email is not sent automatically however you can use the send confirmation
    /// email endpoint again to send the confirmation email. For security measures,
    /// user password is required to complete this request.
    /// This endpoint can also be used to convert an anonymous account to a normal
    /// one, by passing an email address and a new password.
    /// 
    ///
    Future<models.Account> updateEmail({required String email, required String password}) async {
        final String path = '/account/email';

        final Map<String, dynamic> params = {
            
            'email': email,
'password': password,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Account.fromMap(res.data);


    }
    /// List Logs
    ///
    /// Get currently logged in user list of latest security activity logs. Each
    /// log returns user IP address, location and date and time of log.
    ///
    Future<models.LogList> listLogs({List<String>? queries}) async {
        final String path = '/account/logs';

        final Map<String, dynamic> params = {
            'queries': queries,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.LogList.fromMap(res.data);


    }
    /// Update Name
    ///
    /// Update currently logged in user account name.
    ///
    Future<models.Account> updateName({required String name}) async {
        final String path = '/account/name';

        final Map<String, dynamic> params = {
            
            'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Account.fromMap(res.data);


    }
    /// Update Password
    ///
    /// Update currently logged in user password. For validation, user is required
    /// to pass in the new password, and the old password. For users created with
    /// OAuth, Team Invites and Magic URL, oldPassword is optional.
    ///
    Future<models.Account> updatePassword({required String password, String? oldPassword}) async {
        final String path = '/account/password';

        final Map<String, dynamic> params = {
            
            'password': password,
'oldPassword': oldPassword,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Account.fromMap(res.data);


    }
    /// Update Phone
    ///
    /// Update the currently logged in user's phone number. After updating the
    /// phone number, the phone verification status will be reset. A confirmation
    /// SMS is not sent automatically, however you can use the [POST
    /// /account/verification/phone](/docs/client/account#accountCreatePhoneVerification)
    /// endpoint to send a confirmation SMS.
    ///
    Future<models.Account> updatePhone({required String phone, required String password}) async {
        final String path = '/account/phone';

        final Map<String, dynamic> params = {
            
            'phone': phone,
'password': password,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Account.fromMap(res.data);


    }
    /// Get Account Preferences
    ///
    /// Get currently logged in user preferences as a key-value object.
    ///
    Future<models.Preferences> getPrefs() async {
        final String path = '/account/prefs';

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Preferences.fromMap(res.data);


    }
    /// Update Preferences
    ///
    /// Update currently logged in user account preferences. The object you pass is
    /// stored as is, and replaces any previous value. The maximum allowed prefs
    /// size is 64kB and throws error if exceeded.
    ///
    Future<models.Account> updatePrefs({required Map prefs}) async {
        final String path = '/account/prefs';

        final Map<String, dynamic> params = {
            
            'prefs': prefs,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Account.fromMap(res.data);


    }
    /// Create Password Recovery
    ///
    /// Sends the user an email with a temporary secret key for password reset.
    /// When the user clicks the confirmation link he is redirected back to your
    /// app password reset URL with the secret key and email address values
    /// attached to the URL query string. Use the query string params to submit a
    /// request to the [PUT
    /// /account/recovery](/docs/client/account#accountUpdateRecovery) endpoint to
    /// complete the process. The verification link sent to the user's email
    /// address is valid for 1 hour.
    ///
    Future<models.Token> createRecovery({required String email, required String url}) async {
        final String path = '/account/recovery';

        final Map<String, dynamic> params = {
            
            'email': email,
'url': url,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Token.fromMap(res.data);


    }
    /// Create Password Recovery (confirmation)
    ///
    /// Use this endpoint to complete the user account password reset. Both the
    /// **userId** and **secret** arguments will be passed as query parameters to
    /// the redirect URL you have provided when sending your request to the [POST
    /// /account/recovery](/docs/client/account#accountCreateRecovery) endpoint.
    /// 
    /// Please note that in order to avoid a [Redirect
    /// Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md)
    /// the only valid redirect URLs are the ones from domains you have set when
    /// adding your platforms in the console interface.
    ///
    Future<models.Token> updateRecovery({required String userId, required String secret, required String password, required String passwordAgain}) async {
        final String path = '/account/recovery';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'secret': secret,
'password': password,
'passwordAgain': passwordAgain,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);

        return models.Token.fromMap(res.data);


    }
    /// List Sessions
    ///
    /// Get currently logged in user list of active sessions across different
    /// devices.
    ///
    Future<models.SessionList> listSessions() async {
        final String path = '/account/sessions';

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.SessionList.fromMap(res.data);


    }
    /// Delete Sessions
    ///
    /// Delete all sessions from the user account and remove any sessions cookies
    /// from the end client.
    ///
    Future deleteSessions() async {
        final String path = '/account/sessions';

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
    /// Get Session
    ///
    /// Use this endpoint to get a logged in user's session using a Session ID.
    /// Inputting 'current' will return the current session being used.
    ///
    Future<models.Session> getSession({required String sessionId}) async {
        final String path = '/account/sessions/{sessionId}'.replaceAll('{sessionId}', sessionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Session.fromMap(res.data);


    }
    /// Update OAuth Session (Refresh Tokens)
    ///
    /// Access tokens have limited lifespan and expire to mitigate security risks.
    /// If session was created using an OAuth provider, this route can be used to
    /// "refresh" the access token.
    ///
    Future<models.Session> updateSession({required String sessionId}) async {
        final String path = '/account/sessions/{sessionId}'.replaceAll('{sessionId}', sessionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Session.fromMap(res.data);


    }
    /// Delete Session
    ///
    /// Use this endpoint to log out the currently logged in user from all their
    /// account sessions across all of their different devices. When using the
    /// Session ID argument, only the unique session ID provided is deleted.
    /// 
    ///
    Future deleteSession({required String sessionId}) async {
        final String path = '/account/sessions/{sessionId}'.replaceAll('{sessionId}', sessionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
    /// Update Status
    ///
    /// Block the currently logged in user account. Behind the scene, the user
    /// record is not deleted but permanently blocked from any access. To
    /// completely delete a user, use the Users API instead.
    ///
    Future<models.Account> updateStatus() async {
        final String path = '/account/status';

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Account.fromMap(res.data);


    }
    /// Create Email Verification
    ///
    /// Use this endpoint to send a verification message to your user email address
    /// to confirm they are the valid owners of that address. Both the **userId**
    /// and **secret** arguments will be passed as query parameters to the URL you
    /// have provided to be attached to the verification email. The provided URL
    /// should redirect the user back to your app and allow you to complete the
    /// verification process by verifying both the **userId** and **secret**
    /// parameters. Learn more about how to [complete the verification
    /// process](/docs/client/account#accountUpdateEmailVerification). The
    /// verification link sent to the user's email address is valid for 7 days.
    /// 
    /// Please note that in order to avoid a [Redirect
    /// Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md),
    /// the only valid redirect URLs are the ones from domains you have set when
    /// adding your platforms in the console interface.
    /// 
    ///
    Future<models.Token> createVerification({required String url}) async {
        final String path = '/account/verification';

        final Map<String, dynamic> params = {
            
            'url': url,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Token.fromMap(res.data);


    }
    /// Create Email Verification (confirmation)
    ///
    /// Use this endpoint to complete the user email verification process. Use both
    /// the **userId** and **secret** parameters that were attached to your app URL
    /// to verify the user email ownership. If confirmed this route will return a
    /// 200 status code.
    ///
    Future<models.Token> updateVerification({required String userId, required String secret}) async {
        final String path = '/account/verification';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'secret': secret,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);

        return models.Token.fromMap(res.data);


    }
    /// Create Phone Verification
    ///
    /// Use this endpoint to send a verification SMS to the currently logged in
    /// user. This endpoint is meant for use after updating a user's phone number
    /// using the [accountUpdatePhone](/docs/client/account#accountUpdatePhone)
    /// endpoint. Learn more about how to [complete the verification
    /// process](/docs/client/account#accountUpdatePhoneVerification). The
    /// verification code sent to the user's phone number is valid for 15 minutes.
    ///
    Future<models.Token> createPhoneVerification() async {
        final String path = '/account/verification/phone';

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Token.fromMap(res.data);


    }
    /// Create Phone Verification (confirmation)
    ///
    /// Use this endpoint to complete the user phone verification process. Use the
    /// **userId** and **secret** that were sent to your user's phone number to
    /// verify the user email ownership. If confirmed this route will return a 200
    /// status code.
    ///
    Future<models.Token> updatePhoneVerification({required String userId, required String secret}) async {
        final String path = '/account/verification/phone';

        final Map<String, dynamic> params = {
            
            'userId': userId,
'secret': secret,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);

        return models.Token.fromMap(res.data);


    }
}