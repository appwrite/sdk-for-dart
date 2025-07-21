part of '../../models.dart';

/// Health Antivirus
class HealthAntivirus<T> implements Model {
    /// Antivirus version.
    final String version;

    /// Antivirus status. Possible values can are: `disabled`, `offline`, `online`
    final String status;

    HealthAntivirus({
        required this.version,
        required this.status,
    });

    factory HealthAntivirus.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return HealthAntivirus(
            version: 
map['version'].toString(),
            status: 
map['status'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "version": version,
            "status": status,
        };
    }

    // Public getters for private underscore fields
}
