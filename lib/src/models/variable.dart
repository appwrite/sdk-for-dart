part of dart_appwrite.models;

/// Variable
class Variable implements Model {
    /// Variable ID.
    final String $id;
    /// Variable creation date in Datetime
    final String $createdAt;
    /// Variable creation date in Datetime
    final String $updatedAt;
    /// Variable key.
    final String key;
    /// Variable value.
    final String value;
    /// Function ID.
    final String functionId;

    Variable({        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.key,
        required this.value,
        required this.functionId,
    });

    factory Variable.fromMap(Map<String, dynamic> map) {
        return Variable(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            key: map['key'].toString(),
            value: map['value'].toString(),
            functionId: map['functionId'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "key": key,
            "value": value,
            "functionId": functionId,
        };
    }
}
