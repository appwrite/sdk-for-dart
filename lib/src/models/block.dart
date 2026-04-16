part of '../../models.dart';

/// Block
class Block implements Model {
  /// Block creation date in ISO 8601 format.
  final String $createdAt;

  /// Resource type that is blocked
  final String resourceType;

  /// Resource identifier that is blocked
  final String resourceId;

  /// Reason for the block. Can be null if no reason was provided.
  final String? reason;

  /// Block expiration date in ISO 8601 format. Can be null if the block does not expire.
  final String? expiredAt;

  Block({
    required this.$createdAt,
    required this.resourceType,
    required this.resourceId,
    this.reason,
    this.expiredAt,
  });

  factory Block.fromMap(Map<String, dynamic> map) {
    return Block(
      $createdAt: map['\$createdAt'].toString(),
      resourceType: map['resourceType'].toString(),
      resourceId: map['resourceId'].toString(),
      reason: map['reason']?.toString(),
      expiredAt: map['expiredAt']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "resourceType": resourceType,
      "resourceId": resourceId,
      "reason": reason,
      "expiredAt": expiredAt,
    };
  }
}
