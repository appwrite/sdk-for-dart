part of '../../models.dart';

/// Health Queue
class HealthQueue implements Model {
  /// Amount of actions in the queue.
  final int size;

  HealthQueue({
    required this.size,
  });

  factory HealthQueue.fromMap(Map<String, dynamic> map) {
    return HealthQueue(
      size: (map['size'] is String)
          ? int.tryParse(map['size']) ?? 0
          : map['size'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "size": size,
    };
  }
}
