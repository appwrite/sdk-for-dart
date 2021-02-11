import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

import 'enums.dart';

class Client {
    String endPoint;
    String type = 'unknown';
    Map<String, String> headers;
    Map<String, String> config;
    bool selfSigned;
    bool initialized = false;
    Dio http;

    Client({this.endPoint = 'https://appwrite.io/v1', this.selfSigned = false, Dio http}) : this.http = http ?? Dio() {
        
        this.headers = {
            'content-type': 'application/json',
            'x-sdk-version': 'appwrite:dart:0.2.0',
        };

        this.config = {};

        assert(endPoint.startsWith(RegExp("http://|https://")), "endPoint $endPoint must start with 'http'");
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
        headers[key] = value;
        
        return this;
    }

    Future init() async {
        if(!initialized) {
          this.http.options.baseUrl = this.endPoint;
          this.http.options.validateStatus = (status) => status < 400;
        }
    }

    Future<Response> call(HttpMethod method, {String path = '', Map<String, String> headers = const {}, Map<String, dynamic> params = const {}}) async {
        if(selfSigned) {
            // Allow self signed requests
            (http.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
                client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
                return client;
            };
        }

        await this.init();

        // Origin is hardcoded for testing
        Options options = Options(
            headers: {...this.headers, ...headers},
            method: method.name(),
        );

        if(headers['content-type'] == 'multipart/form-data') {
            return http.request(path, data: FormData.fromMap(params), options: options);
        }

        if (method == HttpMethod.get) {
            params.keys.forEach((key) {if (params[key] is int || params[key] is double) {
              params[key] = params[key].toString();
            }});
            
            return http.get(path, queryParameters: params, options: options);
        } else {
            return http.request(path, data: params, options: options);
        }
    }
}