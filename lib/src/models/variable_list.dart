part of '../../models.dart';

/// Variables List
class VariableList<T> implements Model {
  /// Total number of variables documents that matched your query.
  final int total;

  /// List of variables.
  final List<Variable<T>> variables;

  VariableList({required this.total, required this.variables});

  factory VariableList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return VariableList(
      total: map['total'],
      variables: List<Variable<T>>.from(
        map['variables'].map((p) => Variable.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "variables": variables.map((p) => p.toMap()).toList(),
    };
  }

  // Public getters for private underscore fields
}
