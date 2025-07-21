part of '../../models.dart';

/// MFAFactors
class MfaFactors<T> implements Model {
  /// Can TOTP be used for MFA challenge for this account.
  final bool totp;

  /// Can phone (SMS) be used for MFA challenge for this account.
  final bool phone;

  /// Can email be used for MFA challenge for this account.
  final bool email;

  /// Can recovery code be used for MFA challenge for this account.
  final bool recoveryCode;

  MfaFactors({
    required this.totp,
    required this.phone,
    required this.email,
    required this.recoveryCode,
  });

  factory MfaFactors.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return MfaFactors(
      totp: map['totp'],
      phone: map['phone'],
      email: map['email'],
      recoveryCode: map['recoveryCode'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "totp": totp,
      "phone": phone,
      "email": email,
      "recoveryCode": recoveryCode,
    };
  }

  // Public getters for private underscore fields
}
