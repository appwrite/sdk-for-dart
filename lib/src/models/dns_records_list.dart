part of '../../models.dart';

/// DNS records list
class DnsRecordsList implements Model {
  /// Total number of dnsRecords that matched your query.
  final int total;

  /// List of dnsRecords.
  final List<DnsRecord> dnsRecords;

  DnsRecordsList({
    required this.total,
    required this.dnsRecords,
  });
  factory DnsRecordsList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'dnsRecords': [],
      ...map,
    };

    return DnsRecordsList(
      total: map['total'],
      dnsRecords: List<DnsRecord>.from(
        map['dnsRecords'].map((p) => DnsRecord.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "dnsRecords": dnsRecords.map((p) => p.toMap()).toList(),
    };
  }
}
