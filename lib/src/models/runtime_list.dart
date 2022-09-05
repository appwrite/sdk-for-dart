part of dart_appwrite.models;

/// Runtimes List
class RuntimeList implements Model {
    /// Total number of runtimes documents that matched your query.
    final int total;
    /// List of runtimes.
    final List<Runtime> runtimes;

    RuntimeList({
        required this.total,
        required this.runtimes,
    });

    factory RuntimeList.fromMap(Map<String, dynamic> map) {
        return RuntimeList(
            total: map['total'],
            runtimes: List<Runtime>.from(map['runtimes'].map((p) => Runtime.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "runtimes": runtimes.map((p) => p.toMap()),
        };
    }
}
