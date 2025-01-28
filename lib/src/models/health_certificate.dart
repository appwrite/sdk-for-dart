part of '../../models.dart';

/// Health Certificate
class HealthCertificate implements Model {
    /// Certificate name
    final String name;
    /// Subject SN
    final String subjectSN;
    /// Issuer organisation
    final String issuerOrganisation;
    /// Valid from
    final String validFrom;
    /// Valid to
    final String validTo;
    /// Signature type SN
    final String signatureTypeSN;

    HealthCertificate({
        required this.name,
        required this.subjectSN,
        required this.issuerOrganisation,
        required this.validFrom,
        required this.validTo,
        required this.signatureTypeSN,
    });

    factory HealthCertificate.fromMap(Map<String, dynamic> map) {
        return HealthCertificate(
            name: map['name'].toString(),
            subjectSN: map['subjectSN'].toString(),
            issuerOrganisation: map['issuerOrganisation'].toString(),
            validFrom: map['validFrom'].toString(),
            validTo: map['validTo'].toString(),
            signatureTypeSN: map['signatureTypeSN'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "name": name,
            "subjectSN": subjectSN,
            "issuerOrganisation": issuerOrganisation,
            "validFrom": validFrom,
            "validTo": validTo,
            "signatureTypeSN": signatureTypeSN,
        };
    }
}