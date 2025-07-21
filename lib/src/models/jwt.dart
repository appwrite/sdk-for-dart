part of '../../models.dart';

/// JWT
class Jwt<T> implements Model {
  /// JWT encoded string.
  final String jwt;

  Jwt({required this.jwt});

  factory Jwt.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return Jwt(jwt: map['jwt'].toString());
  }

  Map<String, dynamic> toMap() {
    return {"jwt": jwt};
  }

  // Public getters for private underscore fields
}
