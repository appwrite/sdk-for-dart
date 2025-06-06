part of '../../models.dart';

/// Framework
class Framework implements Model {
  /// Framework key.
  final String key;

  /// Framework Name.
  final String name;

  /// Default runtime version.
  final String buildRuntime;

  /// List of supported runtime versions.
  final List<String> runtimes;

  /// List of supported adapters.
  final List<FrameworkAdapter> adapters;

  Framework({
    required this.key,
    required this.name,
    required this.buildRuntime,
    required this.runtimes,
    required this.adapters,
  });

  factory Framework.fromMap(Map<String, dynamic> map) {
    return Framework(
      key: map['key'].toString(),
      name: map['name'].toString(),
      buildRuntime: map['buildRuntime'].toString(),
      runtimes: List.from(map['runtimes'] ?? []),
      adapters: List<FrameworkAdapter>.from(
        map['adapters'].map((p) => FrameworkAdapter.fromMap(p)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "key": key,
      "name": name,
      "buildRuntime": buildRuntime,
      "runtimes": runtimes,
      "adapters": adapters.map((p) => p.toMap()).toList(),
    };
  }
}
