part of '../../models.dart';

/// domainTransferStatus
class DomainTransferStatus implements Model {
  /// Transfer status.
  final enums.DomainTransferStatusEnum status;

  /// Additional transfer status information.
  final String reason;

  /// Transfer status timestamp in ISO 8601 format.
  final String timestamp;

  DomainTransferStatus({
    required this.status,
    required this.reason,
    required this.timestamp,
  });
  factory DomainTransferStatus.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'status': "pending_registry",
      'reason': "",
      'timestamp': "",
      ...map,
    };

    return DomainTransferStatus(
      status: enums.DomainTransferStatusEnum.values.firstWhere(
        (e) => e.value == map['status'],
      ),
      reason: map['reason'].toString(),
      timestamp: map['timestamp'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "status": status.value,
      "reason": reason,
      "timestamp": timestamp,
    };
  }
}
