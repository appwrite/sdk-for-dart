part of '../../models.dart';

/// Execution
class DedicatedDatabaseExecution implements Model {
  /// Result rows as a list of column-name =&gt; value maps. Empty for non-returning statements.
  final List<Map> rows;

  /// Number of rows returned (for SELECT) or affected (for INSERT/UPDATE/DELETE).
  final int rowCount;

  /// Column metadata in result-set order.
  final List<DedicatedDatabaseExecutionColumn> columns;

  /// Server-side execution time in milliseconds.
  final int durationMs;

  /// True when the configured row or byte cap was hit and the result was truncated.
  final bool truncated;

  /// Serialised payload size in bytes.
  final int bytes;

  DedicatedDatabaseExecution({
    required this.rows,
    required this.rowCount,
    required this.columns,
    required this.durationMs,
    required this.truncated,
    required this.bytes,
  });
  factory DedicatedDatabaseExecution.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseExecution(
      rows: List.from(map['rows'] ?? []),
      rowCount: map['rowCount'],
      columns: List<DedicatedDatabaseExecutionColumn>.from(
        map['columns'].map((p) => DedicatedDatabaseExecutionColumn.fromMap(p)),
      ),
      durationMs: map['durationMs'],
      truncated: map['truncated'],
      bytes: map['bytes'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "rows": rows,
      "rowCount": rowCount,
      "columns": columns.map((p) => p.toMap()).toList(),
      "durationMs": durationMs,
      "truncated": truncated,
      "bytes": bytes,
    };
  }
}
