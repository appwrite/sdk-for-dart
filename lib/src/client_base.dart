import 'response.dart';
import 'client.dart';
import 'enums.dart';

abstract class ClientBase implements Client {  
  /// Your project ID
  @override
  ClientBase setProject(value);
  /// Your secret API key
  @override
  ClientBase setKey(value);
  /// Your secret JSON Web Token
  @override
  ClientBase setJWT(value);
  @override
  ClientBase setLocale(value);
  /// The user session to authenticate with
  @override
  ClientBase setSession(value);
  /// The user agent string of the client that made the request
  @override
  ClientBase setForwardedUserAgent(value);

  @override
  ClientBase setSelfSigned({bool status = true});

  @override
  ClientBase setEndpoint(String endPoint);

  @override
  ClientBase addHeader(String key, String value);

  @override
  Future<Response> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  });
}
