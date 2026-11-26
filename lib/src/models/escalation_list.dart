part of '../../models.dart';

/// Escalations List
class EscalationList implements Model {
  /// Total number of escalations that matched your query.
  final int total;

  /// List of escalations.
  final List<Escalation> escalations;

  EscalationList({
    required this.total,
    required this.escalations,
  });
  factory EscalationList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'escalations': [],
      ...map,
    };

    return EscalationList(
      total: map['total'],
      escalations: List<Escalation>.from(
        map['escalations'].map((p) => Escalation.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "escalations": escalations.map((p) => p.toMap()).toList(),
    };
  }
}
