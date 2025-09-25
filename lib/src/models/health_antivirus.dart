part of '../../models.dart';

/// Health Antivirus
class HealthAntivirus implements Model {
  /// Antivirus version.
  final String version;

  /// Antivirus status. Possible values are: `disabled`, `offline`, `online`
  final String status;

  HealthAntivirus({required this.version, required this.status});

  factory HealthAntivirus.fromMap(Map<String, dynamic> map) {
    return HealthAntivirus(
      version: map['version'].toString(),
      status: map['status'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {"version": version, "status": status};
  }
}
