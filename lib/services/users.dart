import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import "../client.dart";
import '../enums.dart';
import "../service.dart";

class Users extends Service {
  Users(Client client) : super(client);

  /// List Users
  ///
  /// Get a list of all the project users. You can use the query params to filter
  /// your results.
  ///
  Future<Response> list(
      {String search = '',
      int limit = 25,
      int offset = 0,
      OrderType orderType = OrderType.asc}) {
    final String path = '/users';

    final Map<String, dynamic> params = {
      'search': search,
      'limit': limit,
      'offset': offset,
      'orderType': orderType.name(),
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Create User
  ///
  /// Create a new user.
  ///
  Future<Response> create(
      {@required String email, @required String password, String name = ''}) {
    final String path = '/users';

    final Map<String, dynamic> params = {
      'email': email,
      'password': password,
      'name': name,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Get User
  ///
  /// Get user by its unique ID.
  ///
  Future<Response> get({@required String userId}) {
    final String path =
        '/users/{userId}'.replaceAll(RegExp('{userId}'), userId);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Get User Logs
  ///
  /// Get user activity logs list by its unique ID.
  ///
  Future<Response> getLogs({@required String userId}) {
    final String path =
        '/users/{userId}/logs'.replaceAll(RegExp('{userId}'), userId);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Get User Preferences
  ///
  /// Get user preferences by its unique ID.
  ///
  Future<Response> getPrefs({@required String userId}) {
    final String path =
        '/users/{userId}/prefs'.replaceAll(RegExp('{userId}'), userId);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Update User Preferences
  ///
  /// Update user preferences by its unique ID. You can pass only the specific
  /// settings you wish to update.
  ///
  Future<Response> updatePrefs({@required String userId, @required Map prefs}) {
    final String path =
        '/users/{userId}/prefs'.replaceAll(RegExp('{userId}'), userId);

    final Map<String, dynamic> params = {
      'prefs': prefs,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.patch,
        path: path, params: params, headers: headers);
  }

  /// Get User Sessions
  ///
  /// Get user sessions list by its unique ID.
  ///
  Future<Response> getSessions({@required String userId}) {
    final String path =
        '/users/{userId}/sessions'.replaceAll(RegExp('{userId}'), userId);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Delete User Sessions
  ///
  /// Delete all user sessions by its unique ID.
  ///
  Future<Response> deleteSessions({@required String userId}) {
    final String path =
        '/users/{userId}/sessions'.replaceAll(RegExp('{userId}'), userId);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Delete User Session
  ///
  /// Delete user sessions by its unique ID.
  ///
  Future<Response> deleteSession(
      {@required String userId, @required String sessionId}) {
    final String path = '/users/{userId}/sessions/{sessionId}'
        .replaceAll(RegExp('{userId}'), userId)
        .replaceAll(RegExp('{sessionId}'), sessionId);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Update User Status
  ///
  /// Update user status by its unique ID.
  ///
  Future<Response> updateStatus(
      {@required String userId, @required String status}) {
    final String path =
        '/users/{userId}/status'.replaceAll(RegExp('{userId}'), userId);

    final Map<String, dynamic> params = {
      'status': status,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.patch,
        path: path, params: params, headers: headers);
  }
}
