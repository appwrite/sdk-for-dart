import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('ProxyRule', () {
    test('model', () {
      final model = ProxyRule(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        domain: 'appwrite.company.com',
        type: 'deployment',
        trigger: 'manual',
        redirectUrl: 'https://appwrite.io/docs',
        redirectStatusCode: 301,
        deploymentId: 'n3u9feiwmf',
        deploymentResourceId: 'n3u9feiwmf',
        deploymentVcsProviderBranch: 'main',
        status: ProxyRuleStatus.unverified,
        logs: 'Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.',
        renewAt: 'datetime',
      );

      final map = model.toMap();
      final result = ProxyRule.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.domain, 'appwrite.company.com');
                  expect(result.type, 'deployment');
                  expect(result.trigger, 'manual');
                  expect(result.redirectUrl, 'https://appwrite.io/docs');
                  expect(result.redirectStatusCode, 301);
                  expect(result.deploymentId, 'n3u9feiwmf');
                  expect(result.deploymentResourceId, 'n3u9feiwmf');
                  expect(result.deploymentVcsProviderBranch, 'main');
                  expect(result.status, ProxyRuleStatus.unverified);
                  expect(result.logs, 'Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.');
                  expect(result.renewAt, 'datetime');
          });
  });
}
