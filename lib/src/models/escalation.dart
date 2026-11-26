part of '../../models.dart';

/// Escalation
class Escalation implements Model {
  /// Escalation ID.
  final String $id;

  /// Escalation creation date in ISO 8601 format.
  final String $createdAt;

  /// Escalation update date in ISO 8601 format.
  final String $updatedAt;

  /// Escalation name.
  final String name;

  /// Who is notified of a firing alert, in order, until a member acknowledges it.
  final List<EscalationStep> steps;

  /// How many more times the steps run from the first, a monitor&#039;s cooldown after the last step, while nobody has acknowledged the alert.
  final int repeat;

  Escalation({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.steps,
    required this.repeat,
  });
  factory Escalation.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'name': "",
      'steps': [],
      'repeat': 0,
      ...map,
    };

    return Escalation(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      steps: List<EscalationStep>.from(
        map['steps'].map((p) => EscalationStep.fromMap(p)),
      ),
      repeat: map['repeat'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "steps": steps.map((p) => p.toMap()).toList(),
      "repeat": repeat,
    };
  }
}
