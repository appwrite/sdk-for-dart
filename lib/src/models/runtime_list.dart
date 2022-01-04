part of dart_appwrite.models;

/// Runtimes List
class RuntimeList {
    /// Total number of items available on the server.
    final int sum;
    /// List of runtimes.
    final List<Runtime> runtimes;

    RuntimeList({
        required this.sum,
        required this.runtimes,
    });

    factory RuntimeList.fromMap(Map<String, dynamic> map) {
        return RuntimeList(
            sum: map['sum'],
            runtimes: List<Runtime>.from(map['runtimes'].map((p) => Runtime.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "runtimes": runtimes.map((p) => p.toMap()),
        };
    }
}
