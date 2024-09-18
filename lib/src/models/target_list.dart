part of '../../models.dart';

/// Target list
class TargetList implements Model {
    /// Total number of targets documents that matched your query.
    final int total;
    /// List of targets.
    final List<Target> targets;

    TargetList({
        required this.total,
        required this.targets,
    });

    factory TargetList.fromMap(Map<String, dynamic> map) {
        return TargetList(
            total: (map['total'] is String) ?
                        int.tryParse(map['total']) ?? 0:map['total'] ?? 0,
            targets: List<Target>.from(map['targets'].map((p) => Target.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "targets": targets.map((p) => p.toMap()).toList(),
        };
    }
}
