part of dart_appwrite;

class Client {
    String endPoint;
    String type = 'unknown';
    Map<String, String>? headers;
    late Map<String, String> config;
    bool selfSigned;
    bool initialized = false;
    Dio http;

    Client({this.endPoint = 'https://appwrite.io/v1', this.selfSigned = false, Dio? http}) : this.http = http ?? Dio() {
        
        this.headers = {
            'content-type': 'application/json',
            'x-sdk-version': 'appwrite:dart:0.6.2',
            'X-Appwrite-Response-Format':'0.8.0',
        };

        this.config = {};

        assert(endPoint.startsWith(RegExp("http://|https://")), "endPoint $endPoint must start with 'http'");
        init();
    }


     /// Your project ID
    Client setProject(value) {
        config['project'] = value;
        addHeader('X-Appwrite-Project', value);
        return this;
    }

     /// Your secret API key
    Client setKey(value) {
        config['key'] = value;
        addHeader('X-Appwrite-Key', value);
        return this;
    }

     /// Your secret JSON Web Token
    Client setJWT(value) {
        config['jWT'] = value;
        addHeader('X-Appwrite-JWT', value);
        return this;
    }

    Client setLocale(value) {
        config['locale'] = value;
        addHeader('X-Appwrite-Locale', value);
        return this;
    }

    Client setSelfSigned({bool status = true}) {
        selfSigned = status;
        return this;
    }

    Client setEndpoint(String endPoint) {
        this.endPoint = endPoint;
        this.http.options.baseUrl = this.endPoint;
        return this;
    }

    Client addHeader(String key, String value) {
        headers![key] = value;
        
        return this;
    }

    void init() {
          this.http.options.baseUrl = this.endPoint;
          this.http.options.validateStatus = (status) => status! < 400;
    }

    Future<Response> call(HttpMethod method, {String path = '', Map<String, String> headers = const {}, Map<String, dynamic> params = const {}, ResponseType? responseType}) async {
        if(selfSigned) {
            // Allow self signed requests
            (http.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
                client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
                return client;
            };
        }

        params.keys.forEach((key) {
          if (params[key] == null) {
            params.remove(key);
          }
        });

        // Origin is hardcoded for testing
        Options options = Options(
            headers: {...this.headers!, ...headers},
            method: method.name(),
            responseType: responseType,
            listFormat: ListFormat.multiCompatible,
        );
        try {

            if(headers['content-type'] == 'multipart/form-data') {
                return await http.request(path, data: FormData.fromMap(params,ListFormat.multiCompatible), options: options);
            }

            if (method == HttpMethod.get) {
                params.keys.forEach((key) {if (params[key] is int || params[key] is double) {
                params[key] = params[key].toString();
                }});
                
                return await http.get(path, queryParameters: params, options: options);
            } else {
                return await http.request(path, data: params, options: options);
            }
        } on DioError catch(e) {
          if(e.response == null) {
            throw AppwriteException(e.message);
          }
          if(responseType == ResponseType.bytes) {
            if ((e.response!.headers.value('content-type') ?? '').contains('application/json')) {
              final res = json.decode(utf8.decode(e.response!.data));
              throw AppwriteException(res['message'],res['code'], res);
            } else {
              throw AppwriteException(e.message);
            }
          }
          if ((e.response!.headers.value('content-type') ?? '').contains('application/json')) {
            throw AppwriteException(e.response!.data['message'],e.response!.data['code'], e.response!.data);
          } else {
            throw AppwriteException(e.response!.data,e.response!.statusCode, e.response!.data);
          }
        } catch(e) {
          throw AppwriteException(e.toString());
        }
    }
}