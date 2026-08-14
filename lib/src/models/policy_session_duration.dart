part of '../../models.dart';

/// Policy Session Duration
class PolicySessionDuration implements Model {
    /// Policy ID.
    final String $id;

    /// Session duration in seconds.
    final int duration;

    PolicySessionDuration({
        required this.$id,
        required this.duration,
    });

    factory PolicySessionDuration.fromMap(Map<String, dynamic> map) {
        return PolicySessionDuration(
            $id: map['\$id'].toString(),
            duration: map['duration'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "duration": duration,
        };
    }
}
