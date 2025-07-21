part of '../../models.dart';

/// Functions List
class FunctionList<T> implements Model {
  /// Total number of functions documents that matched your query.
  final int total;

  /// List of functions.
  final List<Func<T>> functions;

  FunctionList({required this.total, required this.functions});

  factory FunctionList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return FunctionList(
      total: map['total'],
      functions: List<Func<T>>.from(
        map['functions'].map((p) => Func.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "functions": functions.map((p) => p.toMap()).toList(),
    };
  }

  // Public getters for private underscore fields
}
