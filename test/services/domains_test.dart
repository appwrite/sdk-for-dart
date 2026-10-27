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
  group('Domains test', () {
    late MockClient client;
    late Domains domains;

    setUp(() {
      client = MockClient();
      domains = Domains(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'domains': [],
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

      final response = await domains.list(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains",
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
      expect(response, isA<models.DomainsList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "example.com",
        'registrar': "appwrite",
        'nameservers': "Appwrite",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'renewal': "2020-10-15T06:38:00.000+00:00",
        'autoRenewal': true,
        'renewalPrice': 2599,
        'teamId': "5e5ea5c16897e",
        'dnsRecords': [],
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

      final response = await domains.create(
        teamId: "<TEAM_ID>",
        domain: "example.com",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "teamId": "<TEAM_ID>",
        "domain": "example.com",
      });
      expect(response, isA<models.Domain>());
    });

    test('test method getPrice()', () async {
      final Map<String, dynamic> data = {
        'domain': "example.com",
        'tld': "com",
        'available': true,
        'periodYears': 1,
        'premium': true,
        'renewalPeriodYears': 1,
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

      final response = await domains.getPrice(
        domain: "example.com",
        periodYears: 1,
        registrationType: enums.DomainRegistrationType.xnew,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/price",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "domain": "example.com",
        "periodYears": 1,
        "registrationType": enums.DomainRegistrationType.xnew.value,
      });
      expect(response, isA<models.DomainPrice>());
    });

    test('test method listPrices()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'prices': [],
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

      final response = await domains.listPrices(
        domains: [],
        periodYears: 1,
        registrationType: enums.DomainRegistrationType.xnew,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/prices",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "domains": isA<List>(),
        "periodYears": 1,
        "registrationType": enums.DomainRegistrationType.xnew.value,
      });
      expect(response, isA<models.DomainPricesList>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "example.com",
        'registrar': "appwrite",
        'nameservers': "Appwrite",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'renewal': "2020-10-15T06:38:00.000+00:00",
        'autoRenewal': true,
        'renewalPrice': 2599,
        'teamId': "5e5ea5c16897e",
        'dnsRecords': [],
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

      final response = await domains.get(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Domain>());
    });

    test('test method delete()', () async {
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

      final response = await domains.delete(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/domains/%3CDOMAIN_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updateNameservers()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "example.com",
        'registrar': "appwrite",
        'nameservers': "Appwrite",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'renewal': "2020-10-15T06:38:00.000+00:00",
        'autoRenewal': true,
        'renewalPrice': 2599,
        'teamId': "5e5ea5c16897e",
        'dnsRecords': [],
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

      final response = await domains.updateNameservers(
        domainId: "<DOMAIN_ID>",
        nameservers: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/domains/%3CDOMAIN_ID%3E/nameservers",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "nameservers": isA<List>(),
      });
      expect(response, isA<models.Domain>());
    });

    test('test method verifyNameservers()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "example.com",
        'registrar': "appwrite",
        'nameservers': "Appwrite",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'renewal': "2020-10-15T06:38:00.000+00:00",
        'autoRenewal': true,
        'renewalPrice': 2599,
        'teamId': "5e5ea5c16897e",
        'dnsRecords': [],
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

      final response = await domains.verifyNameservers(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/domains/%3CDOMAIN_ID%3E/nameservers/verification",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Domain>());
    });

    test('test method getPresetGoogleWorkspace()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.getPresetGoogleWorkspace(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/presets/google-workspace",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method createPresetGoogleWorkspace()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.createPresetGoogleWorkspace(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/presets/google-workspace",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method getPresetICloud()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.getPresetICloud(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/presets/icloud",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method createPresetICloud()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.createPresetICloud(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/presets/icloud",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method getPresetMailgun()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.getPresetMailgun(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/presets/mailgun",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method createPresetMailgun()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.createPresetMailgun(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/presets/mailgun",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method getPresetOutlook()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.getPresetOutlook(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/presets/outlook",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method createPresetOutlook()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.createPresetOutlook(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/presets/outlook",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method getPresetProtonMail()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.getPresetProtonMail(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/presets/proton-mail",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method createPresetProtonMail()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.createPresetProtonMail(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/presets/proton-mail",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method getPresetZoho()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.getPresetZoho(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/presets/zoho",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method createPresetZoho()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.createPresetZoho(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/presets/zoho",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method listRecords()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'dnsRecords': [],
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

      final response = await domains.listRecords(
        domainId: "<DOMAIN_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/records",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.DnsRecordsList>());
    });

    test('test method createRecordA()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordA(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "value",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/a",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "value",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordA()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordA(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "value",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/a/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "value",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordAAAA()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordAAAA(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "value",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/aaaa",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "value",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordAAAA()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordAAAA(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "value",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/aaaa/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "value",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordAlias()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordAlias(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/alias",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordAlias()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordAlias(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/alias/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordCAA()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordCAA(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "value",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/caa",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "value",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordCAA()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordCAA(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "value",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/caa/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "value",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordCNAME()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordCNAME(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/cname",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordCNAME()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordCNAME(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/cname/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordHTTPS()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordHTTPS(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/https",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordHTTPS()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordHTTPS(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/https/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordMX()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordMX(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        priority: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/mx",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "priority": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordMX()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordMX(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        priority: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/mx/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "priority": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordNS()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordNS(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/ns",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordNS()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordNS(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/ns/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordSRV()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordSRV(
        domainId: "<DOMAIN_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        priority: 1,
        weight: 1,
        port: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/srv",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "priority": 1,
        "weight": 1,
        "port": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordSRV()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordSRV(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        priority: 1,
        weight: 1,
        port: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/srv/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "priority": 1,
        "weight": 1,
        "port": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method createRecordTXT()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.createRecordTXT(
        domainId: "<DOMAIN_ID>",
        name: "name",
        ttl: 1,
        value: "<VALUE>",
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/domains/%3CDOMAIN_ID%3E/records/txt",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method updateRecordTXT()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateRecordTXT(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
        name: "name",
        value: "<VALUE>",
        ttl: 1,
        comment: "<COMMENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/records/txt/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "name",
        "value": "<VALUE>",
        "ttl": 1,
        "comment": "<COMMENT>",
      });
      expect(response, isA<models.DnsRecord>());
    });

    test('test method getRecord()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5f40a6e10c65e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "A",
        'name': "mail",
        'value': "192.0.2.1",
        'ttl': 86400,
        'priority': 10,
        'lock': true,
        'weight': 10,
        'port': 443,
        'comment': "Mail server record",
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

      final response = await domains.getRecord(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/records/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DnsRecord>());
    });

    test('test method deleteRecord()', () async {
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

      final response = await domains.deleteRecord(
        domainId: "<DOMAIN_ID>",
        recordId: "<RECORD_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/domains/%3CDOMAIN_ID%3E/records/%3CRECORD_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updateTeam()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "example.com",
        'registrar': "appwrite",
        'nameservers': "Appwrite",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'renewal': "2020-10-15T06:38:00.000+00:00",
        'autoRenewal': true,
        'renewalPrice': 2599,
        'teamId': "5e5ea5c16897e",
        'dnsRecords': [],
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

      final response = await domains.updateTeam(
        domainId: "<DOMAIN_ID>",
        teamId: "<TEAM_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/domains/%3CDOMAIN_ID%3E/team",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "teamId": "<TEAM_ID>",
      });
      expect(response, isA<models.Domain>());
    });

    test('test method getTransferStatus()', () async {
      final Map<String, dynamic> data = {
        'status': "pending_registry",
        'reason': "Transfer in progress",
        'timestamp': "2020-10-15T06:38:00.000+00:00",
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

      final response = await domains.getTransferStatus(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/transfers/status",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DomainTransferStatus>());
    });

    test('test method getZone()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.getZone(
        domainId: "<DOMAIN_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/domains/%3CDOMAIN_ID%3E/zone",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<String>());
    });

    test('test method updateZone()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "example.com",
        'registrar': "appwrite",
        'nameservers': "Appwrite",
        'expire': "2020-10-15T06:38:00.000+00:00",
        'renewal': "2020-10-15T06:38:00.000+00:00",
        'autoRenewal': true,
        'renewalPrice': 2599,
        'teamId': "5e5ea5c16897e",
        'dnsRecords': [],
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await domains.updateZone(
        domainId: "<DOMAIN_ID>",
        content: "<CONTENT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/domains/%3CDOMAIN_ID%3E/zone",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "content": "<CONTENT>",
      });
      expect(response, isA<models.Domain>());
    });
  });
}
