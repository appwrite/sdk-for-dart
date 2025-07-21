part of '../../models.dart';

/// Framework
class Framework<T> implements Model {
    /// Framework key.
    final String key;

    /// Framework Name.
    final String name;

    /// Default runtime version.
    final String buildRuntime;

    /// List of supported runtime versions.
    final List<String> runtimes;

    /// List of supported adapters.
    final List<FrameworkAdapter<T>> adapters;

    Framework({
        required this.key,
        required this.name,
        required this.buildRuntime,
        required this.runtimes,
        required this.adapters,
    });

    factory Framework.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return Framework(
            key: 
map['key'].toString(),
            name: 
map['name'].toString(),
            buildRuntime: 
map['buildRuntime'].toString(),
            runtimes: 
List.from(map['runtimes'] ?? []),
            adapters: 
List<FrameworkAdapter<T>>.from(map['adapters'].map((p) => FrameworkAdapter.fromMap(p, fromJson))),
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

    // Public getters for private underscore fields
}
