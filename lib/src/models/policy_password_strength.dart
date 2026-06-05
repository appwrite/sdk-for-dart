part of '../../models.dart';

/// Policy Password Strength
class PolicyPasswordStrength implements Model {
  /// Policy ID.
  final String $id;

  /// Minimum password length required for user passwords.
  final int min;

  /// Whether passwords must include at least one uppercase letter.
  final bool uppercase;

  /// Whether passwords must include at least one lowercase letter.
  final bool lowercase;

  /// Whether passwords must include at least one number.
  final bool number;

  /// Whether passwords must include at least one symbol.
  final bool symbols;

  PolicyPasswordStrength({
    required this.$id,
    required this.min,
    required this.uppercase,
    required this.lowercase,
    required this.number,
    required this.symbols,
  });

  factory PolicyPasswordStrength.fromMap(Map<String, dynamic> map) {
    return PolicyPasswordStrength(
      $id: map['\$id'].toString(),
      min: map['min'],
      uppercase: map['uppercase'],
      lowercase: map['lowercase'],
      number: map['number'],
      symbols: map['symbols'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "min": min,
      "uppercase": uppercase,
      "lowercase": lowercase,
      "number": number,
      "symbols": symbols,
    };
  }
}
