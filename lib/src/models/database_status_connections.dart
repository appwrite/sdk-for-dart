part of '../../models.dart';

/// Connections
class DatabaseStatusConnections implements Model {
  /// Current number of active connections.
  final int current;

  /// The engine&#039;s own max_connections. On a pooled database this is the backend limit the pooler multiplexes onto, not the ceiling a client pool may reach — that is networkMaxConnections on the database resource.
  final int max;

  DatabaseStatusConnections({
    required this.current,
    required this.max,
  });

  factory DatabaseStatusConnections.fromMap(Map<String, dynamic> map) {
    return DatabaseStatusConnections(
      current: map['current'],
      max: map['max'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "current": current,
      "max": max,
    };
  }
}
