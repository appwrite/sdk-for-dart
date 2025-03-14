import 'enums.dart';
import 'client_stub.dart'
    if (dart.library.html) 'client_browser.dart'
    if (dart.library.io) 'client_io.dart';
import 'response.dart';
import 'upload_progress.dart';

/// [Client] that handles requests to Appwrite
abstract class Client {
  /// The size for cunked uploads in bytes.
  static const int CHUNK_SIZE = 5 * 1024 * 1024;

  /// Holds configuration such as project.
  late Map<String, String> config;
  late String _endPoint;

  /// Appwrite endpoint.
  String get endPoint => _endPoint;

  /// Initializes a [Client].
  factory Client({
    String endPoint = 'https://cloud.appwrite.io/v1',
    bool selfSigned = false,
  }) => createClient(endPoint: endPoint, selfSigned: selfSigned);

  /// Handle OAuth2 session creation.
  Future<String?> webAuth(Uri url);

  /// Set self signed to [status].
  ///
  /// If self signed is true, [Client] will ignore invalid certificates.
  /// This is helpful in environments where your Appwrite
  /// instance does not have a valid SSL certificate.
  Client setSelfSigned({bool status = true});

  /// Set the Appwrite endpoint.
  Client setEndpoint(String endPoint);

  /// Set Project
  ///
  /// Your project ID
  Client setProject(value);

  /// Set Key
  ///
  /// Your secret API key
  Client setKey(value);

  /// Set JWT
  ///
  /// Your secret JSON Web Token
  Client setJWT(value);

  /// Set Locale
  Client setLocale(value);

  /// Set Session
  ///
  /// The user session to authenticate with
  Client setSession(value);

  /// Set ForwardedUserAgent
  ///
  /// The user agent string of the client that made the request
  Client setForwardedUserAgent(value);

  /// Add headers that should be sent with all API calls.
  Client addHeader(String key, String value);

  /// Sends a "ping" request to Appwrite to verify connectivity.
  Future<String> ping();

  /// Upload a file in chunks.
  Future<Response> chunkedUpload({
    required String path,
    required Map<String, dynamic> params,
    required String paramName,
    required String idParamName,
    required Map<String, String> headers,
    Function(UploadProgress)? onProgress,
  });

  /// Send the API request.
  Future<Response> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  });
}
