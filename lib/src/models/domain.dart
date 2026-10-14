part of '../../models.dart';

/// Domain
class Domain implements Model {
  /// Domain ID.
  final String $id;

  /// Domain creation time in ISO 8601 format.
  final String $createdAt;

  /// Domain update date in ISO 8601 format.
  final String $updatedAt;

  /// Domain name.
  final String domain;

  /// Domain registrar (e.g. &quot;appwrite&quot; or &quot;third_party&quot;).
  final String registrar;

  /// Nameservers setting. &quot;Appwrite&quot; or empty string.
  final String nameservers;

  /// Domain expiry date in ISO 8601 format.
  final String expire;

  /// Domain renewal date in ISO 8601 format.
  final String renewal;

  /// If set to true, the domain will automatically renew.
  final bool autoRenewal;

  /// Renewal price (in cents).
  final int renewalPrice;

  /// Transfer status for domains being transferred in. Null when the domain is not being transferred.
  final enums.DomainTransferStatusEnum? transferStatus;

  /// Team ID.
  final String teamId;

  /// Dns records
  final List<DnsRecord> dnsRecords;

  Domain({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.domain,
    required this.registrar,
    required this.nameservers,
    required this.expire,
    required this.renewal,
    required this.autoRenewal,
    required this.renewalPrice,
    this.transferStatus,
    required this.teamId,
    required this.dnsRecords,
  });
  factory Domain.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'domain': "",
      'registrar': "",
      'nameservers': "",
      'expire': "",
      'renewal': "",
      'autoRenewal': false,
      'renewalPrice': 0,
      'teamId': "",
      'dnsRecords': [],
      ...map,
    };

    return Domain(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      domain: map['domain'].toString(),
      registrar: map['registrar'].toString(),
      nameservers: map['nameservers'].toString(),
      expire: map['expire'].toString(),
      renewal: map['renewal'].toString(),
      autoRenewal: map['autoRenewal'],
      renewalPrice: map['renewalPrice'],
      transferStatus: map['transferStatus'] != null
          ? enums.DomainTransferStatusEnum.values.firstWhere(
              (e) => e.value == map['transferStatus'],
            )
          : null,
      teamId: map['teamId'].toString(),
      dnsRecords: List<DnsRecord>.from(
        map['dnsRecords'].map((p) => DnsRecord.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "domain": domain,
      "registrar": registrar,
      "nameservers": nameservers,
      "expire": expire,
      "renewal": renewal,
      "autoRenewal": autoRenewal,
      "renewalPrice": renewalPrice,
      "transferStatus": transferStatus?.value,
      "teamId": teamId,
      "dnsRecords": dnsRecords.map((p) => p.toMap()).toList(),
    };
  }
}
