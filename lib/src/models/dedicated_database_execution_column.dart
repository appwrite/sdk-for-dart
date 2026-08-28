part of '../../models.dart';

/// ExecutionColumn
class DedicatedDatabaseExecutionColumn implements Model {
  /// Column name as returned by the database.
  final String name;

  /// Engine-specific column type (e.g. int4, text, timestamptz).
  final String type;

  DedicatedDatabaseExecutionColumn({
    required this.name,
    required this.type,
  });
  factory DedicatedDatabaseExecutionColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseExecutionColumn(
      name: map['name'].toString(),
      type: map['type'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "type": type,
    };
  }
}
