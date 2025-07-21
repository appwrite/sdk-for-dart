part of '../../models.dart';

/// Health Queue
class HealthQueue<T> implements Model {
    /// Amount of actions in the queue.
    final int size;

    HealthQueue({
        required this.size,
    });

    factory HealthQueue.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return HealthQueue(
            size: 
map['size'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "size": size,
        };
    }

    // Public getters for private underscore fields
}
