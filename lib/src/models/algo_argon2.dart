part of dart_appwrite.models;

/// AlgoArgon2
class AlgoArgon2 implements Model {
    /// Memory used to compute hash.
    final int memoryCost;
    /// Amount of time consumed to compute hash
    final int timeCost;
    /// Number of threads used to compute hash.
    final int threads;

    AlgoArgon2({        required this.memoryCost,
        required this.timeCost,
        required this.threads,
    });

    factory AlgoArgon2.fromMap(Map<String, dynamic> map) {
        return AlgoArgon2(
            memoryCost: map['memoryCost'],
            timeCost: map['timeCost'],
            threads: map['threads'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "memoryCost": memoryCost,
            "timeCost": timeCost,
            "threads": threads,
        };
    }
}
