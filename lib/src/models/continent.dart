part of '../../models.dart';

/// Continent
class Continent<T> implements Model {
  /// Continent name.
  final String name;

  /// Continent two letter code.
  final String code;

  Continent({required this.name, required this.code});

  factory Continent.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return Continent(
      name: map['name'].toString(),
      code: map['code'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {"name": name, "code": code};
  }

  // Public getters for private underscore fields
}
