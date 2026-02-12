import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('HealthCertificate', () {
    test('model', () {
      final model = HealthCertificate(
        name: '/CN=www.google.com',
        subjectSN: '',
        issuerOrganisation: '',
        validFrom: '1704200998',
        validTo: '1711458597',
        signatureTypeSN: 'RSA-SHA256',
      );

      final map = model.toMap();
      final result = HealthCertificate.fromMap(map);

      expect(result.name, '/CN=www.google.com');
      expect(result.subjectSN, '');
      expect(result.issuerOrganisation, '');
      expect(result.validFrom, '1704200998');
      expect(result.validTo, '1711458597');
      expect(result.signatureTypeSN, 'RSA-SHA256');
    });
  });
}
