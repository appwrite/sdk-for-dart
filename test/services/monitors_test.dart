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
  group('Monitors test', () {
    late MockClient client;
    late Monitors monitors;

    setUp(() {
      client = MockClient();
      monitors = Monitors(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'monitors': [],
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

      final response = await monitors.list(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/monitors",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.MonitorList>());
    });

    test('test method createDnsMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.createDnsMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        domain: "example.com",
        record: enums.MonitorRecord.a,
        resolver: "1.1.1.1",
        rules: [],
        interval: 1,
        timeout: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/monitors/dns",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "monitorId": "<MONITOR_ID>",
        "name": "<NAME>",
        "domain": "example.com",
        "record": enums.MonitorRecord.a.value,
        "resolver": "1.1.1.1",
        "rules": isA<List>(),
        "interval": 1,
        "timeout": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method updateDnsMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.updateDnsMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        domain: "example.com",
        record: enums.MonitorRecord.a,
        resolver: "1.1.1.1",
        rules: [],
        interval: 1,
        timeout: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/monitors/dns/%3CMONITOR_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "domain": "example.com",
        "record": enums.MonitorRecord.a.value,
        "resolver": "1.1.1.1",
        "rules": isA<List>(),
        "interval": 1,
        "timeout": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method createHttpMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.createHttpMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        url: "https://api.example.com/health",
        method: enums.MonitorMethod.gET,
        headers: {},
        body: "<BODY>",
        rules: [],
        interval: 1,
        timeout: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/monitors/http",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "monitorId": "<MONITOR_ID>",
        "name": "<NAME>",
        "url": "https://api.example.com/health",
        "method": enums.MonitorMethod.gET.value,
        "headers": isA<Map>(),
        "body": "<BODY>",
        "rules": isA<List>(),
        "interval": 1,
        "timeout": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method updateHttpMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.updateHttpMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        url: "https://api.example.com/health",
        method: enums.MonitorMethod.gET,
        headers: {},
        body: "<BODY>",
        rules: [],
        interval: 1,
        timeout: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/monitors/http/%3CMONITOR_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "url": "https://api.example.com/health",
        "method": enums.MonitorMethod.gET.value,
        "headers": isA<Map>(),
        "body": "<BODY>",
        "rules": isA<List>(),
        "interval": 1,
        "timeout": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method createSmtpMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.createSmtpMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        host: "smtp.example.com",
        port: 1,
        tlsMode: enums.MonitorTlsMode.none,
        rules: [],
        interval: 1,
        timeout: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/monitors/smtp",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "monitorId": "<MONITOR_ID>",
        "name": "<NAME>",
        "host": "smtp.example.com",
        "port": 1,
        "tlsMode": enums.MonitorTlsMode.none.value,
        "rules": isA<List>(),
        "interval": 1,
        "timeout": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method updateSmtpMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.updateSmtpMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        host: "smtp.example.com",
        port: 1,
        tlsMode: enums.MonitorTlsMode.none,
        rules: [],
        interval: 1,
        timeout: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/monitors/smtp/%3CMONITOR_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "host": "smtp.example.com",
        "port": 1,
        "tlsMode": enums.MonitorTlsMode.none.value,
        "rules": isA<List>(),
        "interval": 1,
        "timeout": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method createTcpMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.createTcpMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        host: "db.example.com",
        port: 1,
        rules: [],
        interval: 1,
        timeout: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/monitors/tcp",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "monitorId": "<MONITOR_ID>",
        "name": "<NAME>",
        "host": "db.example.com",
        "port": 1,
        "rules": isA<List>(),
        "interval": 1,
        "timeout": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method updateTcpMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.updateTcpMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        host: "db.example.com",
        port: 1,
        rules: [],
        interval: 1,
        timeout: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/monitors/tcp/%3CMONITOR_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "host": "db.example.com",
        "port": 1,
        "rules": isA<List>(),
        "interval": 1,
        "timeout": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method createUsageMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.createUsageMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        rules: [],
        window: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/monitors/usage",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "monitorId": "<MONITOR_ID>",
        "name": "<NAME>",
        "rules": isA<List>(),
        "window": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method updateUsageMonitor()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.updateUsageMonitor(
        monitorId: "<MONITOR_ID>",
        name: "<NAME>",
        rules: [],
        window: 1,
        cooldown: 1,
        enabled: false,
        notify: [],
        severity: enums.MonitorSeverity.info,
        escalationId: "<ESCALATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/monitors/usage/%3CMONITOR_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "rules": isA<List>(),
        "window": 1,
        "cooldown": 1,
        "enabled": false,
        "notify": isA<List>(),
        "severity": enums.MonitorSeverity.info.value,
        "escalationId": "<ESCALATION_ID>",
      });
      expect(response, isA<models.Monitor>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Bandwidth spike",
        'projectId': "5e5ea5c16897e",
        'rules': [],
        'type': "usage",
        'resourceType': "database",
        'resourceId': "main",
        'window': 3600,
        'cooldown': 3600,
        'enabled': true,
        'notify': [],
        'escalationId': "5e5ea5c16897e",
        'severity': "warning",
        'status': "ok",
        'alertId': "5e5ea5c16897e",
        'interval': 60,
        'timeout': 10,
        'url': "https://example.com/health",
        'body': "",
        'domain': "example.com",
        'resolver': "1.1.1.1",
        'host': "mail.example.com",
        'port': 587,
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

      final response = await monitors.get(
        monitorId: "<MONITOR_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/monitors/%3CMONITOR_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Monitor>());
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

      final response = await monitors.delete(
        monitorId: "<MONITOR_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/monitors/%3CMONITOR_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });
  });
}
