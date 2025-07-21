part of '../../models.dart';

/// MFAType
class MfaType<T> implements Model {
  /// Secret token used for TOTP factor.
  final String secret;

  /// URI for authenticator apps.
  final String uri;

  MfaType({required this.secret, required this.uri});

  factory MfaType.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return MfaType(
      secret: map['secret'].toString(),
      uri: map['uri'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {"secret": secret, "uri": uri};
  }
}
