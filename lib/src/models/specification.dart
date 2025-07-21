part of '../../models.dart';

/// Specification
class Specification<T> implements Model {
  /// Memory size in MB.
  final int memory;

  /// Number of CPUs.
  final double cpus;

  /// Is size enabled.
  final bool enabled;

  /// Size slug.
  final String slug;

  Specification({
    required this.memory,
    required this.cpus,
    required this.enabled,
    required this.slug,
  });

  factory Specification.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return Specification(
      memory: map['memory'],
      cpus: map['cpus'].toDouble(),
      enabled: map['enabled'],
      slug: map['slug'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {"memory": memory, "cpus": cpus, "enabled": enabled, "slug": slug};
  }

  // Public getters for private underscore fields
}
