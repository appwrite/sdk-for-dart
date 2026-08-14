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

    /// Reason for the block. Can be null if no reason was provided.
    final String? reason;

    /// Block expiration date in ISO 8601 format. Can be null if the block does not expire.
    final String? expiredAt;

    /// Name of the project this block applies to.
    final String projectName;

    /// Region of the project this block applies to.
    final String region;

    /// Name of the organization that owns the project.
    final String organizationName;

    /// ID of the organization that owns the project.
    final String organizationId;

    /// Billing plan of the organization that owns the project.
    final String billingPlan;

    Block({
        required this.$createdAt,
        required this.resourceType,
        required this.resourceId,
        required this.mode,
        this.reason,
        this.expiredAt,
        required this.projectName,
        required this.region,
        required this.organizationName,
        required this.organizationId,
        required this.billingPlan,
    });

    factory Block.fromMap(Map<String, dynamic> map) {
        return Block(
            $createdAt: map['\$createdAt'].toString(),
            resourceType: map['resourceType'].toString(),
            resourceId: map['resourceId'].toString(),
            mode: map['mode'].toString(),
            reason: map['reason']?.toString(),
            expiredAt: map['expiredAt']?.toString(),
            projectName: map['projectName'].toString(),
            region: map['region'].toString(),
            organizationName: map['organizationName'].toString(),
            organizationId: map['organizationId'].toString(),
            billingPlan: map['billingPlan'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "resourceType": resourceType,
            "resourceId": resourceId,
            "mode": mode,
            "reason": reason,
            "expiredAt": expiredAt,
            "projectName": projectName,
            "region": region,
            "organizationName": organizationName,
            "organizationId": organizationId,
            "billingPlan": billingPlan,
        };
    }
}
