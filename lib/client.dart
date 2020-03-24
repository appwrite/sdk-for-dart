import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

import 'enums.dart';

class Client {
    String endPoint;
    Map<String, String> headers;
    bool selfSigned;
    Dio http;
    
    Client() {
        this.endPoint = 'https://appwrite.io/v1';
        this.headers = {
            'content-type': 'application/json',
            'x-sdk-version': 'appwrite:dart:0.0.7',
        };
        this.selfSigned = false;

        this.http = Dio();
        this.http.options.baseUrl = this.endPoint;
        this.http.options.validateStatus = (status) => status != 404;
        this.http.interceptors.add(CookieManager(CookieJar()));
    }


     /// Your project ID
    Client setProject(value) {
        this.addHeader('X-Appwrite-Project', value);

        return this;
    }


     /// Your secret API key
    Client setKey(value) {
        this.addHeader('X-Appwrite-Key', value);

        return this;
    }


    Client setLocale(value) {
        this.addHeader('X-Appwrite-Locale', value);

        return this;
    }


    Client setMode(value) {
        this.addHeader('X-Appwrite-Mode', value);

        return this;
    }

    Client setSelfSigned({bool status = true}) {
        this.selfSigned = status;

        return this;
    }

    Client setEndpoint(String endPoint)
    {
        this.endPoint = endPoint;
        this.http.options.baseUrl = this.endPoint;
        return this;
    }

    Client addHeader(String key, String value) {
        this.headers[key.toLowerCase()] = value.toLowerCase();
        
        return this;
    }

    Future<Response> call(HttpMethod method, {String path = '', Map<String, String> headers = const {}, Map<String, dynamic> params = const {}}) {
        if(this.selfSigned) { 
            // Allow self signed requests
        }

        String reqPath = path;
        bool isGet = method == HttpMethod.get;

        // Origin is hardcoded for testing
        Options options = Options(
            headers: {...this.headers, ...headers, "Origin": "http://localhost"},
            method: method.name(),
        );

        if (isGet) {
            path += "?";
            params.forEach((k, v) {
                path += "${k}=${v}&";
            });
        }

        if (!isGet)
            return http.request(reqPath, data: params, options: options);
        else
            return http.request(reqPath, options: options);
    }
}