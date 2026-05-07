part of '../dart_appwrite.dart';

/// The Project service allows you to manage all the projects in your Appwrite
/// server.
class Project extends Service {
  Project(super.client);

  /// Delete a project.
  Future delete() async {
    final String apiPath = '/project';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Update properties of a specific auth method. Use this endpoint to enable or
  /// disable a method in your project.
  Future<models.Project> updateAuthMethod(
      {required enums.AuthMethod methodId, required bool enabled}) async {
    final String apiPath = '/project/auth-methods/{methodId}'
        .replaceAll('{methodId}', methodId.value);

    final Map<String, dynamic> apiParams = {
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Get a list of all API keys from the current project.
  Future<models.KeyList> listKeys({List<String>? queries, bool? total}) async {
    final String apiPath = '/project/keys';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.KeyList.fromMap(res.data);
  }

  /// Create a new API key. It's recommended to have multiple API keys with
  /// strict scopes for separate functions within your project.
  ///
  /// You can also create an ephemeral API key if you need a short-lived key
  /// instead.
  Future<models.Key> createKey(
      {required String keyId,
      required String name,
      required List<enums.Scopes> scopes,
      String? expire}) async {
    final String apiPath = '/project/keys';

    final Map<String, dynamic> apiParams = {
      'keyId': keyId,
      'name': name,
      'scopes': scopes.map((e) => e.value).toList(),
      'expire': expire,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);
  }

  /// Create a new ephemeral API key. It's recommended to have multiple API keys
  /// with strict scopes for separate functions within your project.
  ///
  /// You can also create a standard API key if you need a longer-lived key
  /// instead.
  Future<models.EphemeralKey> createEphemeralKey(
      {required List<enums.Scopes> scopes, required int duration}) async {
    final String apiPath = '/project/keys/ephemeral';

    final Map<String, dynamic> apiParams = {
      'scopes': scopes.map((e) => e.value).toList(),
      'duration': duration,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.EphemeralKey.fromMap(res.data);
  }

  /// Get a key by its unique ID.
  Future<models.Key> getKey({required String keyId}) async {
    final String apiPath = '/project/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);
  }

  /// Update a key by its unique ID. Use this endpoint to update the name,
  /// scopes, or expiration time of an API key.
  Future<models.Key> updateKey(
      {required String keyId,
      required String name,
      required List<enums.Scopes> scopes,
      String? expire}) async {
    final String apiPath = '/project/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'scopes': scopes.map((e) => e.value).toList(),
      'expire': expire,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);
  }

  /// Delete a key by its unique ID. Once deleted, the key can no longer be used
  /// to authenticate API calls.
  Future deleteKey({required String keyId}) async {
    final String apiPath = '/project/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Update the project labels. Labels can be used to easily filter projects in
  /// an organization.
  Future<models.Project> updateLabels({required List<String> labels}) async {
    final String apiPath = '/project/labels';

    final Map<String, dynamic> apiParams = {
      'labels': labels,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Get a list of all mock phones in the project. This endpoint returns an
  /// array of all mock phones and their OTPs.
  Future<models.MockNumberList> listMockPhones(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/project/mock-phones';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MockNumberList.fromMap(res.data);
  }

  /// Create a new mock phone for your project. Use this endpoint to register a
  /// mock phone number and its sign-in OTP for your testers.
  Future<models.MockNumber> createMockPhone(
      {required String number, required String otp}) async {
    final String apiPath = '/project/mock-phones';

    final Map<String, dynamic> apiParams = {
      'number': number,
      'otp': otp,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MockNumber.fromMap(res.data);
  }

  /// Get a mock phone by its unique number. This endpoint returns the mock
  /// phone's OTP.
  Future<models.MockNumber> getMockPhone({required String number}) async {
    final String apiPath =
        '/project/mock-phones/{number}'.replaceAll('{number}', number);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MockNumber.fromMap(res.data);
  }

  /// Update a mock phone by its unique number. Use this endpoint to update the
  /// mock phone's OTP.
  Future<models.MockNumber> updateMockPhone(
      {required String number, required String otp}) async {
    final String apiPath =
        '/project/mock-phones/{number}'.replaceAll('{number}', number);

    final Map<String, dynamic> apiParams = {
      'otp': otp,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MockNumber.fromMap(res.data);
  }

  /// Delete a mock phone by its unique number. This endpoint removes the mock
  /// phone and its OTP configuration from the project.
  Future deleteMockPhone({required String number}) async {
    final String apiPath =
        '/project/mock-phones/{number}'.replaceAll('{number}', number);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all OAuth2 providers supported by the server, along with the
  /// project's configuration for each. Credential fields are write-only and
  /// always returned empty.
  Future<models.OAuth2ProviderList> listOAuth2Providers(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/project/oauth2';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2ProviderList.fromMap(res.data);
  }

  /// Get a single OAuth2 provider configuration. Credential fields (client
  /// secret, p8 file, key/team IDs) are write-only and always returned empty.
  Future<models.Model> getOAuth2Provider(
      {required enums.OAuthProvider providerId}) async {
    final String apiPath = '/project/oauth2/:provider';

    final Map<String, dynamic> apiParams = {
      'providerId': providerId.value,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return () {
      if (res.data is! Map<String, dynamic>) {
        throw StateError(
            'Unable to match response to any expected response model.');
      }

      final response = res.data as Map<String, dynamic>;
      if (response['\$id'] == 'github') {
        return models.OAuth2Github.fromMap(response);
      }
      if (response['\$id'] == 'discord') {
        return models.OAuth2Discord.fromMap(response);
      }
      if (response['\$id'] == 'figma') {
        return models.OAuth2Figma.fromMap(response);
      }
      if (response['\$id'] == 'dropbox') {
        return models.OAuth2Dropbox.fromMap(response);
      }
      if (response['\$id'] == 'dailymotion') {
        return models.OAuth2Dailymotion.fromMap(response);
      }
      if (response['\$id'] == 'bitbucket') {
        return models.OAuth2Bitbucket.fromMap(response);
      }
      if (response['\$id'] == 'bitly') {
        return models.OAuth2Bitly.fromMap(response);
      }
      if (response['\$id'] == 'box') {
        return models.OAuth2Box.fromMap(response);
      }
      if (response['\$id'] == 'autodesk') {
        return models.OAuth2Autodesk.fromMap(response);
      }
      if (response['\$id'] == 'google') {
        return models.OAuth2Google.fromMap(response);
      }
      if (response['\$id'] == 'zoom') {
        return models.OAuth2Zoom.fromMap(response);
      }
      if (response['\$id'] == 'zoho') {
        return models.OAuth2Zoho.fromMap(response);
      }
      if (response['\$id'] == 'yandex') {
        return models.OAuth2Yandex.fromMap(response);
      }
      if (response['\$id'] == 'x') {
        return models.OAuth2X.fromMap(response);
      }
      if (response['\$id'] == 'wordpress') {
        return models.OAuth2WordPress.fromMap(response);
      }
      if (response['\$id'] == 'twitch') {
        return models.OAuth2Twitch.fromMap(response);
      }
      if (response['\$id'] == 'stripe') {
        return models.OAuth2Stripe.fromMap(response);
      }
      if (response['\$id'] == 'spotify') {
        return models.OAuth2Spotify.fromMap(response);
      }
      if (response['\$id'] == 'slack') {
        return models.OAuth2Slack.fromMap(response);
      }
      if (response['\$id'] == 'podio') {
        return models.OAuth2Podio.fromMap(response);
      }
      if (response['\$id'] == 'notion') {
        return models.OAuth2Notion.fromMap(response);
      }
      if (response['\$id'] == 'salesforce') {
        return models.OAuth2Salesforce.fromMap(response);
      }
      if (response['\$id'] == 'yahoo') {
        return models.OAuth2Yahoo.fromMap(response);
      }
      if (response['\$id'] == 'linkedin') {
        return models.OAuth2Linkedin.fromMap(response);
      }
      if (response['\$id'] == 'disqus') {
        return models.OAuth2Disqus.fromMap(response);
      }
      if (response['\$id'] == 'amazon') {
        return models.OAuth2Amazon.fromMap(response);
      }
      if (response['\$id'] == 'etsy') {
        return models.OAuth2Etsy.fromMap(response);
      }
      if (response['\$id'] == 'facebook') {
        return models.OAuth2Facebook.fromMap(response);
      }
      if (response['\$id'] == 'tradeshiftBox') {
        return models.OAuth2Tradeshift.fromMap(response);
      }
      if (response['\$id'] == 'paypalSandbox') {
        return models.OAuth2Paypal.fromMap(response);
      }
      if (response['\$id'] == 'gitlab') {
        return models.OAuth2Gitlab.fromMap(response);
      }
      if (response['\$id'] == 'authentik') {
        return models.OAuth2Authentik.fromMap(response);
      }
      if (response['\$id'] == 'auth0') {
        return models.OAuth2Auth0.fromMap(response);
      }
      if (response['\$id'] == 'fusionauth') {
        return models.OAuth2FusionAuth.fromMap(response);
      }
      if (response['\$id'] == 'keycloak') {
        return models.OAuth2Keycloak.fromMap(response);
      }
      if (response['\$id'] == 'oidc') {
        return models.OAuth2Oidc.fromMap(response);
      }
      if (response['\$id'] == 'apple') {
        return models.OAuth2Apple.fromMap(response);
      }
      if (response['\$id'] == 'okta') {
        return models.OAuth2Okta.fromMap(response);
      }
      if (response['\$id'] == 'kick') {
        return models.OAuth2Kick.fromMap(response);
      }
      if (response['\$id'] == 'microsoft') {
        return models.OAuth2Microsoft.fromMap(response);
      }

      throw StateError(
          'Unable to match response to any expected response model.');
    }();
  }

  /// Update the project OAuth2 Amazon configuration.
  Future<models.OAuth2Amazon> updateOAuth2Amazon(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/amazon';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Amazon.fromMap(res.data);
  }

  /// Update the project OAuth2 Apple configuration.
  Future<models.OAuth2Apple> updateOAuth2Apple(
      {String? serviceId,
      String? keyId,
      String? teamId,
      String? p8File,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/apple';

    final Map<String, dynamic> apiParams = {
      'serviceId': serviceId,
      'keyId': keyId,
      'teamId': teamId,
      'p8File': p8File,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Apple.fromMap(res.data);
  }

  /// Update the project OAuth2 Auth0 configuration.
  Future<models.OAuth2Auth0> updateOAuth2Auth0(
      {String? clientId,
      String? clientSecret,
      String? endpoint,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/auth0';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'endpoint': endpoint,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Auth0.fromMap(res.data);
  }

  /// Update the project OAuth2 Authentik configuration.
  Future<models.OAuth2Authentik> updateOAuth2Authentik(
      {String? clientId,
      String? clientSecret,
      String? endpoint,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/authentik';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'endpoint': endpoint,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Authentik.fromMap(res.data);
  }

  /// Update the project OAuth2 Autodesk configuration.
  Future<models.OAuth2Autodesk> updateOAuth2Autodesk(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/autodesk';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Autodesk.fromMap(res.data);
  }

  /// Update the project OAuth2 Bitbucket configuration.
  Future<models.OAuth2Bitbucket> updateOAuth2Bitbucket(
      {String? key, String? secret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/bitbucket';

    final Map<String, dynamic> apiParams = {
      'key': key,
      'secret': secret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Bitbucket.fromMap(res.data);
  }

  /// Update the project OAuth2 Bitly configuration.
  Future<models.OAuth2Bitly> updateOAuth2Bitly(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/bitly';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Bitly.fromMap(res.data);
  }

  /// Update the project OAuth2 Box configuration.
  Future<models.OAuth2Box> updateOAuth2Box(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/box';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Box.fromMap(res.data);
  }

  /// Update the project OAuth2 Dailymotion configuration.
  Future<models.OAuth2Dailymotion> updateOAuth2Dailymotion(
      {String? apiKey, String? apiSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/dailymotion';

    final Map<String, dynamic> apiParams = {
      'apiKey': apiKey,
      'apiSecret': apiSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Dailymotion.fromMap(res.data);
  }

  /// Update the project OAuth2 Discord configuration.
  Future<models.OAuth2Discord> updateOAuth2Discord(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/discord';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Discord.fromMap(res.data);
  }

  /// Update the project OAuth2 Disqus configuration.
  Future<models.OAuth2Disqus> updateOAuth2Disqus(
      {String? publicKey, String? secretKey, bool? enabled}) async {
    final String apiPath = '/project/oauth2/disqus';

    final Map<String, dynamic> apiParams = {
      'publicKey': publicKey,
      'secretKey': secretKey,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Disqus.fromMap(res.data);
  }

  /// Update the project OAuth2 Dropbox configuration.
  Future<models.OAuth2Dropbox> updateOAuth2Dropbox(
      {String? appKey, String? appSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/dropbox';

    final Map<String, dynamic> apiParams = {
      'appKey': appKey,
      'appSecret': appSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Dropbox.fromMap(res.data);
  }

  /// Update the project OAuth2 Etsy configuration.
  Future<models.OAuth2Etsy> updateOAuth2Etsy(
      {String? keyString, String? sharedSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/etsy';

    final Map<String, dynamic> apiParams = {
      'keyString': keyString,
      'sharedSecret': sharedSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Etsy.fromMap(res.data);
  }

  /// Update the project OAuth2 Facebook configuration.
  Future<models.OAuth2Facebook> updateOAuth2Facebook(
      {String? appId, String? appSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/facebook';

    final Map<String, dynamic> apiParams = {
      'appId': appId,
      'appSecret': appSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Facebook.fromMap(res.data);
  }

  /// Update the project OAuth2 Figma configuration.
  Future<models.OAuth2Figma> updateOAuth2Figma(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/figma';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Figma.fromMap(res.data);
  }

  /// Update the project OAuth2 FusionAuth configuration.
  Future<models.OAuth2FusionAuth> updateOAuth2FusionAuth(
      {String? clientId,
      String? clientSecret,
      String? endpoint,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/fusionauth';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'endpoint': endpoint,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2FusionAuth.fromMap(res.data);
  }

  /// Update the project OAuth2 GitHub configuration.
  Future<models.OAuth2Github> updateOAuth2GitHub(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/github';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Github.fromMap(res.data);
  }

  /// Update the project OAuth2 Gitlab configuration.
  Future<models.OAuth2Gitlab> updateOAuth2Gitlab(
      {String? applicationId,
      String? secret,
      String? endpoint,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/gitlab';

    final Map<String, dynamic> apiParams = {
      'applicationId': applicationId,
      'secret': secret,
      'endpoint': endpoint,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Gitlab.fromMap(res.data);
  }

  /// Update the project OAuth2 Google configuration.
  Future<models.OAuth2Google> updateOAuth2Google(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/google';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Google.fromMap(res.data);
  }

  /// Update the project OAuth2 Keycloak configuration.
  Future<models.OAuth2Keycloak> updateOAuth2Keycloak(
      {String? clientId,
      String? clientSecret,
      String? endpoint,
      String? realmName,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/keycloak';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'endpoint': endpoint,
      'realmName': realmName,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Keycloak.fromMap(res.data);
  }

  /// Update the project OAuth2 Kick configuration.
  Future<models.OAuth2Kick> updateOAuth2Kick(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/kick';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Kick.fromMap(res.data);
  }

  /// Update the project OAuth2 Linkedin configuration.
  Future<models.OAuth2Linkedin> updateOAuth2Linkedin(
      {String? clientId, String? primaryClientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/linkedin';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'primaryClientSecret': primaryClientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Linkedin.fromMap(res.data);
  }

  /// Update the project OAuth2 Microsoft configuration.
  Future<models.OAuth2Microsoft> updateOAuth2Microsoft(
      {String? applicationId,
      String? applicationSecret,
      String? tenant,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/microsoft';

    final Map<String, dynamic> apiParams = {
      'applicationId': applicationId,
      'applicationSecret': applicationSecret,
      'tenant': tenant,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Microsoft.fromMap(res.data);
  }

  /// Update the project OAuth2 Notion configuration.
  Future<models.OAuth2Notion> updateOAuth2Notion(
      {String? oauthClientId, String? oauthClientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/notion';

    final Map<String, dynamic> apiParams = {
      'oauthClientId': oauthClientId,
      'oauthClientSecret': oauthClientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Notion.fromMap(res.data);
  }

  /// Update the project OAuth2 Oidc configuration.
  Future<models.OAuth2Oidc> updateOAuth2Oidc(
      {String? clientId,
      String? clientSecret,
      String? wellKnownURL,
      String? authorizationURL,
      String? tokenURL,
      String? userInfoURL,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/oidc';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'wellKnownURL': wellKnownURL,
      'authorizationURL': authorizationURL,
      'tokenURL': tokenURL,
      'userInfoURL': userInfoURL,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Oidc.fromMap(res.data);
  }

  /// Update the project OAuth2 Okta configuration.
  Future<models.OAuth2Okta> updateOAuth2Okta(
      {String? clientId,
      String? clientSecret,
      String? domain,
      String? authorizationServerId,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/okta';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'domain': domain,
      'authorizationServerId': authorizationServerId,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Okta.fromMap(res.data);
  }

  /// Update the project OAuth2 Paypal configuration.
  Future<models.OAuth2Paypal> updateOAuth2Paypal(
      {String? clientId, String? secretKey, bool? enabled}) async {
    final String apiPath = '/project/oauth2/paypal';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'secretKey': secretKey,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Paypal.fromMap(res.data);
  }

  /// Update the project OAuth2 PaypalSandbox configuration.
  Future<models.OAuth2Paypal> updateOAuth2PaypalSandbox(
      {String? clientId, String? secretKey, bool? enabled}) async {
    final String apiPath = '/project/oauth2/paypalSandbox';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'secretKey': secretKey,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Paypal.fromMap(res.data);
  }

  /// Update the project OAuth2 Podio configuration.
  Future<models.OAuth2Podio> updateOAuth2Podio(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/podio';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Podio.fromMap(res.data);
  }

  /// Update the project OAuth2 Salesforce configuration.
  Future<models.OAuth2Salesforce> updateOAuth2Salesforce(
      {String? customerKey, String? customerSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/salesforce';

    final Map<String, dynamic> apiParams = {
      'customerKey': customerKey,
      'customerSecret': customerSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Salesforce.fromMap(res.data);
  }

  /// Update the project OAuth2 Slack configuration.
  Future<models.OAuth2Slack> updateOAuth2Slack(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/slack';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Slack.fromMap(res.data);
  }

  /// Update the project OAuth2 Spotify configuration.
  Future<models.OAuth2Spotify> updateOAuth2Spotify(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/spotify';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Spotify.fromMap(res.data);
  }

  /// Update the project OAuth2 Stripe configuration.
  Future<models.OAuth2Stripe> updateOAuth2Stripe(
      {String? clientId, String? apiSecretKey, bool? enabled}) async {
    final String apiPath = '/project/oauth2/stripe';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'apiSecretKey': apiSecretKey,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Stripe.fromMap(res.data);
  }

  /// Update the project OAuth2 Tradeshift configuration.
  Future<models.OAuth2Tradeshift> updateOAuth2Tradeshift(
      {String? oauth2ClientId,
      String? oauth2ClientSecret,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/tradeshift';

    final Map<String, dynamic> apiParams = {
      'oauth2ClientId': oauth2ClientId,
      'oauth2ClientSecret': oauth2ClientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Tradeshift.fromMap(res.data);
  }

  /// Update the project OAuth2 Tradeshift Sandbox configuration.
  Future<models.OAuth2Tradeshift> updateOAuth2TradeshiftSandbox(
      {String? oauth2ClientId,
      String? oauth2ClientSecret,
      bool? enabled}) async {
    final String apiPath = '/project/oauth2/tradeshiftBox';

    final Map<String, dynamic> apiParams = {
      'oauth2ClientId': oauth2ClientId,
      'oauth2ClientSecret': oauth2ClientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Tradeshift.fromMap(res.data);
  }

  /// Update the project OAuth2 Twitch configuration.
  Future<models.OAuth2Twitch> updateOAuth2Twitch(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/twitch';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Twitch.fromMap(res.data);
  }

  /// Update the project OAuth2 WordPress configuration.
  Future<models.OAuth2WordPress> updateOAuth2WordPress(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/wordpress';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2WordPress.fromMap(res.data);
  }

  /// Update the project OAuth2 X configuration.
  Future<models.OAuth2X> updateOAuth2X(
      {String? customerKey, String? secretKey, bool? enabled}) async {
    final String apiPath = '/project/oauth2/x';

    final Map<String, dynamic> apiParams = {
      'customerKey': customerKey,
      'secretKey': secretKey,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2X.fromMap(res.data);
  }

  /// Update the project OAuth2 Yahoo configuration.
  Future<models.OAuth2Yahoo> updateOAuth2Yahoo(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/yahoo';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Yahoo.fromMap(res.data);
  }

  /// Update the project OAuth2 Yandex configuration.
  Future<models.OAuth2Yandex> updateOAuth2Yandex(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/yandex';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Yandex.fromMap(res.data);
  }

  /// Update the project OAuth2 Zoho configuration.
  Future<models.OAuth2Zoho> updateOAuth2Zoho(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/zoho';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Zoho.fromMap(res.data);
  }

  /// Update the project OAuth2 Zoom configuration.
  Future<models.OAuth2Zoom> updateOAuth2Zoom(
      {String? clientId, String? clientSecret, bool? enabled}) async {
    final String apiPath = '/project/oauth2/zoom';

    final Map<String, dynamic> apiParams = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.OAuth2Zoom.fromMap(res.data);
  }

  /// Get a list of all platforms in the project. This endpoint returns an array
  /// of all platforms and their configurations.
  Future<models.PlatformList> listPlatforms(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/project/platforms';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformList.fromMap(res.data);
  }

  /// Create a new Android platform for your project. Use this endpoint to
  /// register a new Android platform where your users will run your application
  /// which will interact with the Appwrite API.
  Future<models.PlatformAndroid> createAndroidPlatform(
      {required String platformId,
      required String name,
      required String applicationId}) async {
    final String apiPath = '/project/platforms/android';

    final Map<String, dynamic> apiParams = {
      'platformId': platformId,
      'name': name,
      'applicationId': applicationId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformAndroid.fromMap(res.data);
  }

  /// Update an Android platform by its unique ID. Use this endpoint to update
  /// the platform's name or application ID.
  Future<models.PlatformAndroid> updateAndroidPlatform(
      {required String platformId,
      required String name,
      required String applicationId}) async {
    final String apiPath = '/project/platforms/android/{platformId}'
        .replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'applicationId': applicationId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformAndroid.fromMap(res.data);
  }

  /// Create a new Apple platform for your project. Use this endpoint to register
  /// a new Apple platform where your users will run your application which will
  /// interact with the Appwrite API.
  Future<models.PlatformApple> createApplePlatform(
      {required String platformId,
      required String name,
      required String bundleIdentifier}) async {
    final String apiPath = '/project/platforms/apple';

    final Map<String, dynamic> apiParams = {
      'platformId': platformId,
      'name': name,
      'bundleIdentifier': bundleIdentifier,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformApple.fromMap(res.data);
  }

  /// Update an Apple platform by its unique ID. Use this endpoint to update the
  /// platform's name or bundle identifier.
  Future<models.PlatformApple> updateApplePlatform(
      {required String platformId,
      required String name,
      required String bundleIdentifier}) async {
    final String apiPath = '/project/platforms/apple/{platformId}'
        .replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'bundleIdentifier': bundleIdentifier,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformApple.fromMap(res.data);
  }

  /// Create a new Linux platform for your project. Use this endpoint to register
  /// a new Linux platform where your users will run your application which will
  /// interact with the Appwrite API.
  Future<models.PlatformLinux> createLinuxPlatform(
      {required String platformId,
      required String name,
      required String packageName}) async {
    final String apiPath = '/project/platforms/linux';

    final Map<String, dynamic> apiParams = {
      'platformId': platformId,
      'name': name,
      'packageName': packageName,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformLinux.fromMap(res.data);
  }

  /// Update a Linux platform by its unique ID. Use this endpoint to update the
  /// platform's name or package name.
  Future<models.PlatformLinux> updateLinuxPlatform(
      {required String platformId,
      required String name,
      required String packageName}) async {
    final String apiPath = '/project/platforms/linux/{platformId}'
        .replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'packageName': packageName,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformLinux.fromMap(res.data);
  }

  /// Create a new web platform for your project. Use this endpoint to register a
  /// new platform where your users will run your application which will interact
  /// with the Appwrite API.
  Future<models.PlatformWeb> createWebPlatform(
      {required String platformId,
      required String name,
      required String hostname}) async {
    final String apiPath = '/project/platforms/web';

    final Map<String, dynamic> apiParams = {
      'platformId': platformId,
      'name': name,
      'hostname': hostname,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformWeb.fromMap(res.data);
  }

  /// Update a web platform by its unique ID. Use this endpoint to update the
  /// platform's name or hostname.
  Future<models.PlatformWeb> updateWebPlatform(
      {required String platformId,
      required String name,
      required String hostname}) async {
    final String apiPath = '/project/platforms/web/{platformId}'
        .replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'hostname': hostname,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformWeb.fromMap(res.data);
  }

  /// Create a new Windows platform for your project. Use this endpoint to
  /// register a new Windows platform where your users will run your application
  /// which will interact with the Appwrite API.
  Future<models.PlatformWindows> createWindowsPlatform(
      {required String platformId,
      required String name,
      required String packageIdentifierName}) async {
    final String apiPath = '/project/platforms/windows';

    final Map<String, dynamic> apiParams = {
      'platformId': platformId,
      'name': name,
      'packageIdentifierName': packageIdentifierName,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformWindows.fromMap(res.data);
  }

  /// Update a Windows platform by its unique ID. Use this endpoint to update the
  /// platform's name or package identifier name.
  Future<models.PlatformWindows> updateWindowsPlatform(
      {required String platformId,
      required String name,
      required String packageIdentifierName}) async {
    final String apiPath = '/project/platforms/windows/{platformId}'
        .replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'packageIdentifierName': packageIdentifierName,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformWindows.fromMap(res.data);
  }

  /// Get a platform by its unique ID. This endpoint returns the platform's
  /// details, including its name, type, and key configurations.
  Future<models.Model> getPlatform({required String platformId}) async {
    final String apiPath = '/project/platforms/{platformId}'
        .replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return () {
      if (res.data is! Map<String, dynamic>) {
        throw StateError(
            'Unable to match response to any expected response model.');
      }

      final response = res.data as Map<String, dynamic>;
      if (response['type'] == 'web') {
        return models.PlatformWeb.fromMap(response);
      }
      if (response['type'] == 'apple') {
        return models.PlatformApple.fromMap(response);
      }
      if (response['type'] == 'android') {
        return models.PlatformAndroid.fromMap(response);
      }
      if (response['type'] == 'windows') {
        return models.PlatformWindows.fromMap(response);
      }
      if (response['type'] == 'linux') {
        return models.PlatformLinux.fromMap(response);
      }

      throw StateError(
          'Unable to match response to any expected response model.');
    }();
  }

  /// Delete a platform by its unique ID. This endpoint removes the platform and
  /// all its configurations from the project.
  Future deletePlatform({required String platformId}) async {
    final String apiPath = '/project/platforms/{platformId}'
        .replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all project policies and their current configuration.
  Future<models.PolicyList> listPolicies(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/project/policies';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PolicyList.fromMap(res.data);
  }

  /// Updating this policy allows you to control if team members can see other
  /// members information. When enabled, all team members can see ID, name,
  /// email, phone number, and MFA status of other members..
  Future<models.Project> updateMembershipPrivacyPolicy(
      {bool? userId,
      bool? userEmail,
      bool? userPhone,
      bool? userName,
      bool? userMFA}) async {
    final String apiPath = '/project/policies/membership-privacy';

    final Map<String, dynamic> apiParams = {
      if (userId != null) 'userId': userId,
      if (userEmail != null) 'userEmail': userEmail,
      if (userPhone != null) 'userPhone': userPhone,
      if (userName != null) 'userName': userName,
      if (userMFA != null) 'userMFA': userMFA,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Updating this policy allows you to control if new passwords are checked
  /// against most common passwords dictionary. When enabled, and user changes
  /// their password, password must not be contained in the dictionary.
  Future<models.Project> updatePasswordDictionaryPolicy(
      {required bool enabled}) async {
    final String apiPath = '/project/policies/password-dictionary';

    final Map<String, dynamic> apiParams = {
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Updates one of password strength policies. Based on total length
  /// configured, previous password hashes are stored, and users cannot choose a
  /// new password that is already stored in the passwird history list, when
  /// updating an user password, or setting new one through password recovery.
  ///
  /// Keep in mind, while password history policy is disabled, the history is not
  /// being stored. Enabling the policy will not have any history on existing
  /// users, and it will only start to collect and enforce the policy on password
  /// changes since the policy is enabled.
  Future<models.Project> updatePasswordHistoryPolicy(
      {required int? total}) async {
    final String apiPath = '/project/policies/password-history';

    final Map<String, dynamic> apiParams = {
      'total': total,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Updating this policy allows you to control if password strength is checked
  /// against personal data. When enabled, and user sets or changes their
  /// password, the password must not contain user ID, name, email or phone
  /// number.
  Future<models.Project> updatePasswordPersonalDataPolicy(
      {required bool enabled}) async {
    final String apiPath = '/project/policies/password-personal-data';

    final Map<String, dynamic> apiParams = {
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Updating this policy allows you to control if email alert is sent upon
  /// session creation. When enabled, and user signs into their account, they
  /// will be sent an email notification. There is an exception, the first
  /// session after a new sign up does not trigger an alert, even if the policy
  /// is enabled.
  Future<models.Project> updateSessionAlertPolicy(
      {required bool enabled}) async {
    final String apiPath = '/project/policies/session-alert';

    final Map<String, dynamic> apiParams = {
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Update maximum duration how long sessions created within a project should
  /// stay active for.
  Future<models.Project> updateSessionDurationPolicy(
      {required int duration}) async {
    final String apiPath = '/project/policies/session-duration';

    final Map<String, dynamic> apiParams = {
      'duration': duration,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Updating this policy allows you to control if existing sessions should be
  /// invalidated when a password of a user is changed. When enabled, and user
  /// changes their password, they will be logged out of all their devices.
  Future<models.Project> updateSessionInvalidationPolicy(
      {required bool enabled}) async {
    final String apiPath = '/project/policies/session-invalidation';

    final Map<String, dynamic> apiParams = {
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Update the maximum number of sessions allowed per user. When the limit is
  /// hit, the oldest session will be deleted to make room for new one.
  Future<models.Project> updateSessionLimitPolicy({required int? total}) async {
    final String apiPath = '/project/policies/session-limit';

    final Map<String, dynamic> apiParams = {
      'total': total,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Update the maximum number of users in the project. When the limit is hit or
  /// amount of existing users already exceeded the limit, all users remain
  /// active, but new user sign up will be prohibited.
  Future<models.Project> updateUserLimitPolicy({required int? total}) async {
    final String apiPath = '/project/policies/user-limit';

    final Map<String, dynamic> apiParams = {
      'total': total,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Get a policy by its unique ID. This endpoint returns the current
  /// configuration for the requested project policy.
  Future<models.Model> getPolicy(
      {required enums.ProjectPolicyId policyId}) async {
    final String apiPath =
        '/project/policies/{policyId}'.replaceAll('{policyId}', policyId.value);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return () {
      if (res.data is! Map<String, dynamic>) {
        throw StateError(
            'Unable to match response to any expected response model.');
      }

      final response = res.data as Map<String, dynamic>;
      if (response['\$id'] == 'password-dictionary') {
        return models.PolicyPasswordDictionary.fromMap(response);
      }
      if (response['\$id'] == 'password-history') {
        return models.PolicyPasswordHistory.fromMap(response);
      }
      if (response['\$id'] == 'password-personal-data') {
        return models.PolicyPasswordPersonalData.fromMap(response);
      }
      if (response['\$id'] == 'session-alert') {
        return models.PolicySessionAlert.fromMap(response);
      }
      if (response['\$id'] == 'session-duration') {
        return models.PolicySessionDuration.fromMap(response);
      }
      if (response['\$id'] == 'session-invalidation') {
        return models.PolicySessionInvalidation.fromMap(response);
      }
      if (response['\$id'] == 'session-limit') {
        return models.PolicySessionLimit.fromMap(response);
      }
      if (response['\$id'] == 'user-limit') {
        return models.PolicyUserLimit.fromMap(response);
      }
      if (response['\$id'] == 'membership-privacy') {
        return models.PolicyMembershipPrivacy.fromMap(response);
      }

      throw StateError(
          'Unable to match response to any expected response model.');
    }();
  }

  /// Update properties of a specific protocol. Use this endpoint to enable or
  /// disable a protocol in your project.
  Future<models.Project> updateProtocol(
      {required enums.ProtocolId protocolId, required bool enabled}) async {
    final String apiPath = '/project/protocols/{protocolId}'
        .replaceAll('{protocolId}', protocolId.value);

    final Map<String, dynamic> apiParams = {
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Update properties of a specific service. Use this endpoint to enable or
  /// disable a service in your project.
  Future<models.Project> updateService(
      {required enums.ServiceId serviceId, required bool enabled}) async {
    final String apiPath = '/project/services/{serviceId}'
        .replaceAll('{serviceId}', serviceId.value);

    final Map<String, dynamic> apiParams = {
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Update the SMTP configuration for your project. Use this endpoint to
  /// configure your project's SMTP provider with your custom settings for
  /// sending transactional emails.
  Future<models.Project> updateSMTP(
      {String? host,
      int? port,
      String? username,
      String? password,
      String? senderEmail,
      String? senderName,
      String? replyToEmail,
      String? replyToName,
      enums.Secure? secure,
      bool? enabled}) async {
    final String apiPath = '/project/smtp';

    final Map<String, dynamic> apiParams = {
      'host': host,
      'port': port,
      'username': username,
      'password': password,
      'senderEmail': senderEmail,
      'senderName': senderName,
      'replyToEmail': replyToEmail,
      'replyToName': replyToName,
      'secure': secure?.value,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Send a test email to verify SMTP configuration.
  Future createSMTPTest({required List<String> emails}) async {
    final String apiPath = '/project/smtp/tests';

    final Map<String, dynamic> apiParams = {
      'emails': emails,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all custom email templates configured for the project. This
  /// endpoint returns an array of all configured email templates and their
  /// locales.
  Future<models.EmailTemplateList> listEmailTemplates(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/project/templates/email';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.EmailTemplateList.fromMap(res.data);
  }

  /// Update a custom email template for the specified locale and type. Use this
  /// endpoint to modify the content of your email templates.
  Future<models.EmailTemplate> updateEmailTemplate(
      {required enums.EmailTemplateType templateId,
      enums.EmailTemplateLocale? locale,
      String? subject,
      String? message,
      String? senderName,
      String? senderEmail,
      String? replyToEmail,
      String? replyToName}) async {
    final String apiPath = '/project/templates/email';

    final Map<String, dynamic> apiParams = {
      'templateId': templateId.value,
      if (locale != null) 'locale': locale.value,
      'subject': subject,
      'message': message,
      'senderName': senderName,
      'senderEmail': senderEmail,
      'replyToEmail': replyToEmail,
      'replyToName': replyToName,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.EmailTemplate.fromMap(res.data);
  }

  /// Get a custom email template for the specified locale and type. This
  /// endpoint returns the template content, subject, and other configuration
  /// details.
  Future<models.EmailTemplate> getEmailTemplate(
      {required enums.EmailTemplateType templateId,
      enums.EmailTemplateLocale? locale}) async {
    final String apiPath = '/project/templates/email/{templateId}'
        .replaceAll('{templateId}', templateId.value);

    final Map<String, dynamic> apiParams = {
      if (locale != null) 'locale': locale.value,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.EmailTemplate.fromMap(res.data);
  }

  /// Get a list of all project environment variables.
  Future<models.VariableList> listVariables(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/project/variables';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VariableList.fromMap(res.data);
  }

  /// Create a new project environment variable. These variables can be accessed
  /// by all functions and sites in the project.
  Future<models.Variable> createVariable(
      {required String variableId,
      required String key,
      required String value,
      bool? secret}) async {
    final String apiPath = '/project/variables';

    final Map<String, dynamic> apiParams = {
      'variableId': variableId,
      'key': key,
      'value': value,
      if (secret != null) 'secret': secret,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);
  }

  /// Get a variable by its unique ID.
  Future<models.Variable> getVariable({required String variableId}) async {
    final String apiPath = '/project/variables/{variableId}'
        .replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);
  }

  /// Update variable by its unique ID.
  Future<models.Variable> updateVariable(
      {required String variableId,
      String? key,
      String? value,
      bool? secret}) async {
    final String apiPath = '/project/variables/{variableId}'
        .replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'value': value,
      'secret': secret,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);
  }

  /// Delete a variable by its unique ID.
  Future deleteVariable({required String variableId}) async {
    final String apiPath = '/project/variables/{variableId}'
        .replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }
}
