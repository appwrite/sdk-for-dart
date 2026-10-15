part of '../../models.dart';

/// Block
class Block implements Model {
  /// Block creation date in ISO 8601 format.
  final String $createdAt;

  /// Resource type that is blocked
  final String resourceType;

  /// Resource identifier that is blocked
  final String resourceId;

  /// Block mode. full blocks reads and writes; readOnly blocks writes only.
  final String mode;

  /// Block expiration date in ISO 8601 format. Can be null if the block does not expire.
  final String? expiredAt;

  Block({
    required this.$createdAt,
    required this.resourceType,
    required this.resourceId,
    required this.mode,
    this.expiredAt,
  });
  factory Block.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$createdAt': "",
      'resourceType': "",
      'resourceId': "",
      'mode': "full",
      ...map,
    };

    return Block(
      $createdAt: map['\$createdAt'].toString(),
      resourceType: map['resourceType'].toString(),
      resourceId: map['resourceId'].toString(),
      mode: map['mode'].toString(),
      expiredAt: map['expiredAt']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "resourceType": resourceType,
      "resourceId": resourceId,
      "mode": mode,
      "expiredAt": expiredAt,
    };
  }
}
