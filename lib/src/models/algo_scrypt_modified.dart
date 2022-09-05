part of dart_appwrite.models;

/// AlgoScryptModified
class AlgoScryptModified implements Model {
    /// Salt used to compute hash.
    final String salt;
    /// Separator used to compute hash.
    final String saltSeparator;
    /// Key used to compute hash.
    final String signerKey;

    AlgoScryptModified({
        required this.salt,
        required this.saltSeparator,
        required this.signerKey,
    });

    factory AlgoScryptModified.fromMap(Map<String, dynamic> map) {
        return AlgoScryptModified(
            salt: map['salt'].toString(),
            saltSeparator: map['saltSeparator'].toString(),
            signerKey: map['signerKey'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "salt": salt,
            "saltSeparator": saltSeparator,
            "signerKey": signerKey,
        };
    }
}
