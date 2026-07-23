part of '../../models.dart';

/// Connections
class DatabaseStatusConnections implements Model {
  /// Current number of active connections.
  final int current;

  /// Maximum allowed connections.
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
