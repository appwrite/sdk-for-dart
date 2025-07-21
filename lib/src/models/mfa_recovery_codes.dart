part of '../../models.dart';

/// MFA Recovery Codes
class MfaRecoveryCodes<T> implements Model {
  /// Recovery codes.
  final List<String> recoveryCodes;

  MfaRecoveryCodes({required this.recoveryCodes});

  factory MfaRecoveryCodes.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return MfaRecoveryCodes(
      recoveryCodes: List.from(map['recoveryCodes'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {"recoveryCodes": recoveryCodes};
  }

  // Public getters for private underscore fields
}
