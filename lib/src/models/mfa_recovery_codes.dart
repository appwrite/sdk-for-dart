part of dart_appwrite.models;

/// MFA Recovery Codes
class MfaRecoveryCodes implements Model {
    /// Recovery codes.
    final List recoveryCodes;

    MfaRecoveryCodes({
        required this.recoveryCodes,
    });

    factory MfaRecoveryCodes.fromMap(Map<String, dynamic> map) {
        return MfaRecoveryCodes(
            recoveryCodes: map['recoveryCodes'] ?? [],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "recoveryCodes": recoveryCodes,
        };
    }
}
