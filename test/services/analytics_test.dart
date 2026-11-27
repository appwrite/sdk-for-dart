import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;
import 'package:dart_appwrite/src/enums.dart';
import 'package:dart_appwrite/src/response.dart';
import 'dart:typed_data';
import 'package:dart_appwrite/dart_appwrite.dart';

class MockClient extends Mock implements Client {
  Map<String, String> config = {'project': 'testproject'};
  String endPoint = 'https://localhost/v1';

  @override
  Future<Response> call(
    HttpMethod? method, {
    String? path = '',
    Map<String, String>? headers = const {},
    Map<String, dynamic>? params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#call, [method], {
        #path: path,
        #headers: headers,
        #params: params,
        #responseType: responseType,
      }),
      returnValue: Response(),
    );
  }

  @override
  Future<String?> webAuth(Uri? url) async {
    return super.noSuchMethod(
      Invocation.method(#webAuth, [url]),
      returnValue: 'done',
    );
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
    ResponseType? responseType,
    HttpMethod? method = HttpMethod.post,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#chunkedUpload, [], {
        #path: path,
        #params: params,
        #paramName: paramName,
        #idParamName: idParamName,
        #headers: headers,
        #method: method,
      }),
      returnValue: Response(data: {}),
    );
  }
}

void main() {
  group('Analytics test', () {
    late MockClient client;
    late Analytics analytics;

    setUp(() {
      client = MockClient();
      analytics = Analytics(client);
    });

    test('test method listProperties()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'properties': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.listProperties(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/analytics/properties",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "search": "<SEARCH>",
        "total": false,
      });
      expect(response, isA<models.AnalyticsPropertyList>());
    });

    test('test method createProperty()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Website",
        'domain': "example.com",
        'enabled': true,
        'allowedOrigins': [],
        'type': "web",
        'identifyUsers': true,
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
        'firstAccessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.createProperty(
        propertyId: "<PROPERTY_ID>",
        name: "<NAME>",
        domain: "<DOMAIN>",
        enabled: false,
        allowedOrigins: [],
        identifyUsers: false,
        type: enums.AnalyticsPropertyType.web,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/analytics/properties",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "propertyId": "<PROPERTY_ID>",
        "name": "<NAME>",
        "domain": "<DOMAIN>",
        "enabled": false,
        "allowedOrigins": isA<List>(),
        "identifyUsers": false,
        "type": enums.AnalyticsPropertyType.web.value,
      });
      expect(response, isA<models.AnalyticsProperty>());
    });

    test('test method getProperty()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Website",
        'domain': "example.com",
        'enabled': true,
        'allowedOrigins': [],
        'type': "web",
        'identifyUsers': true,
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
        'firstAccessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.getProperty(
        propertyId: "<PROPERTY_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/analytics/properties/%3CPROPERTY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.AnalyticsProperty>());
    });

    test('test method updateProperty()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Website",
        'domain': "example.com",
        'enabled': true,
        'allowedOrigins': [],
        'type': "web",
        'identifyUsers': true,
        'accessedAt': "2020-10-15T06:38:00.000+00:00",
        'firstAccessedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.updateProperty(
        propertyId: "<PROPERTY_ID>",
        name: "<NAME>",
        domain: "<DOMAIN>",
        enabled: false,
        allowedOrigins: [],
        identifyUsers: false,
        type: enums.AnalyticsPropertyType.web,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/analytics/properties/%3CPROPERTY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "domain": "<DOMAIN>",
        "enabled": false,
        "allowedOrigins": isA<List>(),
        "identifyUsers": false,
        "type": enums.AnalyticsPropertyType.web.value,
      });
      expect(response, isA<models.AnalyticsProperty>());
    });

    test('test method deleteProperty()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.deleteProperty(
        propertyId: "<PROPERTY_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/analytics/properties/%3CPROPERTY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listAnnotations()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'annotations': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.listAnnotations(
        propertyId: "<PROPERTY_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/analytics/properties/%3CPROPERTY_ID%3E/annotations",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.AnalyticsAnnotationList>());
    });

    test('test method createAnnotation()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'propertyId': "5e5ea5c16897e",
        'date': "2020-10-15T06:38:00.000+00:00",
        'content': "Launched the new pricing page",
        'userId': "5e5ea5c16897e",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.createAnnotation(
        propertyId: "<PROPERTY_ID>",
        annotationId: "<ANNOTATION_ID>",
        date: "2020-10-15T06:38:00.000+00:00",
        content: "<CONTENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/analytics/properties/%3CPROPERTY_ID%3E/annotations",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "annotationId": "<ANNOTATION_ID>",
        "date": "2020-10-15T06:38:00.000+00:00",
        "content": "<CONTENT>",
      });
      expect(response, isA<models.AnalyticsAnnotation>());
    });

    test('test method getAnnotation()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'propertyId': "5e5ea5c16897e",
        'date': "2020-10-15T06:38:00.000+00:00",
        'content': "Launched the new pricing page",
        'userId': "5e5ea5c16897e",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.getAnnotation(
        propertyId: "<PROPERTY_ID>",
        annotationId: "<ANNOTATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/analytics/properties/%3CPROPERTY_ID%3E/annotations/%3CANNOTATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.AnalyticsAnnotation>());
    });

    test('test method updateAnnotation()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'propertyId': "5e5ea5c16897e",
        'date': "2020-10-15T06:38:00.000+00:00",
        'content': "Launched the new pricing page",
        'userId': "5e5ea5c16897e",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.updateAnnotation(
        propertyId: "<PROPERTY_ID>",
        annotationId: "<ANNOTATION_ID>",
        date: "2020-10-15T06:38:00.000+00:00",
        content: "<CONTENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/analytics/properties/%3CPROPERTY_ID%3E/annotations/%3CANNOTATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "date": "2020-10-15T06:38:00.000+00:00",
        "content": "<CONTENT>",
      });
      expect(response, isA<models.AnalyticsAnnotation>());
    });

    test('test method deleteAnnotation()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.deleteAnnotation(
        propertyId: "<PROPERTY_ID>",
        annotationId: "<ANNOTATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/analytics/properties/%3CPROPERTY_ID%3E/annotations/%3CANNOTATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method createEvent()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.createEvent(
        propertyId: "<PROPERTY_ID>",
        name: "<NAME>",
        url: "https://example.com",
        domain: "<DOMAIN>",
        referrer: "<REFERRER>",
        screenWidth: 1,
        sessionHash: "<SESSION_HASH>",
        scrollDepth: 1,
        engagementTime: 1,
        props: [],
        userId: "<USER_ID>",
        ip: "<IP>",
        userAgent: "<USER_AGENT>",
        interactive: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/analytics/properties/%3CPROPERTY_ID%3E/events",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "url": "https://example.com",
        "domain": "<DOMAIN>",
        "referrer": "<REFERRER>",
        "screenWidth": 1,
        "sessionHash": "<SESSION_HASH>",
        "scrollDepth": 1,
        "engagementTime": 1,
        "props": isA<List>(),
        "userId": "<USER_ID>",
        "ip": "<IP>",
        "userAgent": "<USER_AGENT>",
        "interactive": false,
      });
    });

    test('test method listMetrics()', () async {
      final Map<String, dynamic> data = {
        'total': 30,
        'metrics': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await analytics.listMetrics(
        propertyId: "<PROPERTY_ID>",
        queries: [],
        interval: enums.AnalyticsInterval.oneHour,
        dimensions: [enums.AnalyticsDimension.country],
        propKey: "<PROP_KEY>",
        dateRange: "<DATE_RANGE>",
        startAt: "2020-10-15T06:38:00.000+00:00",
        endAt: "2020-10-15T06:38:00.000+00:00",
        limit: 1,
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/analytics/properties/%3CPROPERTY_ID%3E/metrics",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "interval": enums.AnalyticsInterval.oneHour.value,
        "dimensions": isA<List>(),
        "propKey": "<PROP_KEY>",
        "dateRange": "<DATE_RANGE>",
        "startAt": "2020-10-15T06:38:00.000+00:00",
        "endAt": "2020-10-15T06:38:00.000+00:00",
        "limit": 1,
        "total": false,
      });
      expect(response, isA<models.AnalyticsMetricList>());
    });
  });
}
