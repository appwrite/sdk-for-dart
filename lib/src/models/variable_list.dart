part of dart_appwrite.models;

/// Variables List
class VariableList implements Model {
    /// Total number of variables documents that matched your query.
    final int total;
    /// List of variables.
    final List<Variable> variables;

    VariableList({
        required this.total,
        required this.variables,
    });

    factory VariableList.fromMap(Map<String, dynamic> map) {
        return VariableList(
            total: map['total'],
            variables: List<Variable>.from(map['variables'].map((p) => Variable.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "variables": variables.map((p) => p.toMap()).toList(),
        };
    }
}
