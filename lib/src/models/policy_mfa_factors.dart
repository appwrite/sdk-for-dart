part of '../../models.dart';

/// Policy MFA Factors
class PolicyMfaFactors implements Model {
    /// Policy ID.
    final String $id;

    /// Whether TOTP can be used to complete an MFA challenge.
    final bool totp;

    /// Whether email can be used to complete an MFA challenge.
    final bool email;

    /// Whether phone (SMS) can be used to complete an MFA challenge.
    final bool phone;

    /// Whether the custom factor can be used to complete an MFA challenge.
    final bool custom;

    PolicyMfaFactors({
        required this.$id,
        required this.totp,
        required this.email,
        required this.phone,
        required this.custom,
    });

    factory PolicyMfaFactors.fromMap(Map<String, dynamic> map) {
        return PolicyMfaFactors(
            $id: map['\$id'].toString(),
            totp: map['totp'],
            email: map['email'],
            phone: map['phone'],
            custom: map['custom'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "totp": totp,
            "email": email,
            "phone": phone,
            "custom": custom,
        };
    }
}
