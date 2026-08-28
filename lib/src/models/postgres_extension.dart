part of '../../models.dart';

/// Postgres extension
class PostgresExtension implements Model {
  /// Extension key used with CREATE EXTENSION.
  final String key;

  /// Human-readable extension name.
  final String name;

  /// Short description of what the extension provides.
  final String description;

  /// Category the extension belongs to.
  final String category;

  PostgresExtension({
    required this.key,
    required this.name,
    required this.description,
    required this.category,
  });
  factory PostgresExtension.fromMap(
    Map<String, dynamic> map,
  ) {
    return PostgresExtension(
      key: map['key'].toString(),
      name: map['name'].toString(),
      description: map['description'].toString(),
      category: map['category'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "key": key,
      "name": name,
      "description": description,
      "category": category,
    };
  }
}
