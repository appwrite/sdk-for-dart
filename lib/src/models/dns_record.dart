part of '../../models.dart';

/// DNSRecord
class DnsRecord implements Model {
  /// DNS Record ID.
  final String $id;

  /// DNS Record creation time in ISO 8601 format.
  final String $createdAt;

  /// DNS Record update date in ISO 8601 format.
  final String $updatedAt;

  /// DNS record type (e.g. A, CNAME, MX).
  final String type;

  /// Record name or subdomain.
  final String name;

  /// Value of the record (IP address, domain, etc.).
  final String value;

  /// Time to live (in seconds).
  final int ttl;

  /// Record priority (commonly used for MX).
  final int priority;

  /// Whether this record is locked (read-only).
  final bool lock;

  /// Record weight (used for SRV records).
  final int weight;

  /// Target port (used for SRV records).
  final int port;

  /// Comment for the DNS record.
  final String comment;

  DnsRecord({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.type,
    required this.name,
    required this.value,
    required this.ttl,
    required this.priority,
    required this.lock,
    required this.weight,
    required this.port,
    required this.comment,
  });
  factory DnsRecord.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'type': "",
      'name': "",
      'value': "",
      'ttl': 3600,
      'priority': 0,
      'lock': false,
      'weight': 0,
      'port': 0,
      'comment': "",
      ...map,
    };

    return DnsRecord(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      type: map['type'].toString(),
      name: map['name'].toString(),
      value: map['value'].toString(),
      ttl: map['ttl'],
      priority: map['priority'],
      lock: map['lock'],
      weight: map['weight'],
      port: map['port'],
      comment: map['comment'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "type": type,
      "name": name,
      "value": value,
      "ttl": ttl,
      "priority": priority,
      "lock": lock,
      "weight": weight,
      "port": port,
      "comment": comment,
    };
  }
}
