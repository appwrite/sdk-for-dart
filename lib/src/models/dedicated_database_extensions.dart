part of '../../models.dart';

/// Extensions
class DedicatedDatabaseExtensions implements Model {
  /// List of installed extensions.
  final List<String> installed;

  /// List of available extensions that can be installed.
  final List<String> available;

  /// Curated metadata (display name, description, category) for each available extension.
  final List<PostgresExtension> metadata;

  DedicatedDatabaseExtensions({
    required this.installed,
    required this.available,
    required this.metadata,
  });
  factory DedicatedDatabaseExtensions.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseExtensions(
      installed: List.from(map['installed'] ?? []),
      available: List.from(map['available'] ?? []),
      metadata: List<PostgresExtension>.from(
        map['metadata'].map((p) => PostgresExtension.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "installed": installed,
      "available": available,
      "metadata": metadata.map((p) => p.toMap()).toList(),
    };
  }
}
