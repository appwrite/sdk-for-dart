import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'client_mixin.dart';
import 'client_base.dart';
import 'enums.dart';
import 'exception.dart';
import 'response.dart';

ClientBase createClient({
  required String endPoint,
  required bool selfSigned,
}) =>
    ClientIO(
      endPoint: endPoint,
      selfSigned: selfSigned,
    );

class ClientIO extends ClientBase with ClientMixin {
  String _endPoint;
  Map<String, String>? _headers;
  @override
  late Map<String, String> config;
  late http.Client _httpClient;
  late HttpClient _nativeClient;

  ClientIO({
    String endPoint = 'https://HOSTNAME/v1',
    bool selfSigned = false,
  }) : _endPoint = endPoint {
    _nativeClient = HttpClient()
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) => selfSigned);
    _httpClient = IOClient(_nativeClient);
    _endPoint = endPoint;
    _headers = {
      'content-type': 'application/json',
      'x-sdk-version': 'appwrite:dart:4.0.0',
      'X-Appwrite-Response-Format' : '0.13.0',
    };

    config = {};

    assert(_endPoint.startsWith(RegExp("http://|https://")),
        "endPoint $_endPoint must start with 'http'");
  }

  @override
  String get endPoint => _endPoint;

     /// Your project ID
    @override
    ClientIO setProject(value) {
        config['project'] = value;
        addHeader('X-Appwrite-Project', value);
        return this;
    }
     /// Your secret API key
    @override
    ClientIO setKey(value) {
        config['key'] = value;
        addHeader('X-Appwrite-Key', value);
        return this;
    }
     /// Your secret JSON Web Token
    @override
    ClientIO setJWT(value) {
        config['jWT'] = value;
        addHeader('X-Appwrite-JWT', value);
        return this;
    }
    @override
    ClientIO setLocale(value) {
        config['locale'] = value;
        addHeader('X-Appwrite-Locale', value);
        return this;
    }

  @override
  ClientIO setSelfSigned({bool status = true}) {
    _nativeClient.badCertificateCallback =
        ((X509Certificate cert, String host, int port) => status);
    return this;
  }

  @override
  ClientIO setEndpoint(String endPoint) {
    _endPoint = endPoint;
    return this;
  }

  @override
  ClientIO addHeader(String key, String value) {
    _headers![key] = value;
    return this;
  }

  @override
  Future<Response> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    late http.Response res;
    http.BaseRequest request = prepareRequest(
      method,
      uri: Uri.parse(_endPoint + path),
      headers: {..._headers!, ...headers},
      params: params,
    );

    try {
      final streamedResponse = await _httpClient.send(request);
      res = await toResponse(streamedResponse);
      return prepareResponse(
        res,
        responseType: responseType,
      );
    } catch (e) {
      if (e is AppwriteException) {
        rethrow;
      }
      throw AppwriteException(e.toString());
    }
  }
}
