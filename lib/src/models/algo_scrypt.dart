part of dart_appwrite.models;

/// AlgoScrypt
class AlgoScrypt implements Model {
    /// CPU complexity of computed hash.
    final int costCpu;
    /// Memory complexity of computed hash.
    final int costMemory;
    /// Parallelization of computed hash.
    final int costParallel;
    /// Length used to compute hash.
    final int length;

    AlgoScrypt({
        required this.costCpu,
        required this.costMemory,
        required this.costParallel,
        required this.length,
    });

    factory AlgoScrypt.fromMap(Map<String, dynamic> map) {
        return AlgoScrypt(
            costCpu: map['costCpu'],
            costMemory: map['costMemory'],
            costParallel: map['costParallel'],
            length: map['length'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "costCpu": costCpu,
            "costMemory": costMemory,
            "costParallel": costParallel,
            "length": length,
        };
    }
}
