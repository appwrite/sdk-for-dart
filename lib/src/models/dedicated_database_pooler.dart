part of '../../models.dart';

/// PoolerConfig
class DedicatedDatabasePooler implements Model {
  /// Whether connection pooling is enabled.
  final bool enabled;

  /// Connection pool mode. Possible values: transaction (releases connections back to pool after each transaction), session (holds connections for the entire client session).
  final String mode;

  /// Client-connection ceiling the pooler accepts. Enforced on MySQL and MariaDB; on PostgreSQL the pooler has no client cap, so this reports the database&#039;s advertised networkMaxConnections and cannot be set here.
  final int maxConnections;

  /// Default pool size per user.
  final int defaultPoolSize;

  /// Pooler listening port.
  final int port;

  /// Whether SELECTs are routed to HA replicas while writes and locked reads stay on the primary. Active only when HA is enabled.
  final bool readWriteSplitting;

  /// Effective CPU request applied to the pooler sidecar container (Kubernetes quantity). Returns the proportional default (5% of DB CPU, floor 100m) unless overridden.
  final String poolerCpuRequest;

  /// Effective CPU limit applied to the pooler sidecar container (Kubernetes quantity). Returns the proportional default (10% of DB CPU, floor 200m) unless overridden.
  final String poolerCpuLimit;

  /// Effective memory request applied to the pooler sidecar container (Kubernetes quantity). Returns the proportional default (7.5% of DB memory, floor 64Mi) unless overridden.
  final String poolerMemoryRequest;

  /// Effective memory limit applied to the pooler sidecar container (Kubernetes quantity). Returns the proportional default (15% of DB memory, floor 128Mi) unless overridden.
  final String poolerMemoryLimit;

  DedicatedDatabasePooler({
    required this.enabled,
    required this.mode,
    required this.maxConnections,
    required this.defaultPoolSize,
    required this.port,
    required this.readWriteSplitting,
    required this.poolerCpuRequest,
    required this.poolerCpuLimit,
    required this.poolerMemoryRequest,
    required this.poolerMemoryLimit,
  });
  factory DedicatedDatabasePooler.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabasePooler(
      enabled: map['enabled'],
      mode: map['mode'].toString(),
      maxConnections: map['maxConnections'],
      defaultPoolSize: map['defaultPoolSize'],
      port: map['port'],
      readWriteSplitting: map['readWriteSplitting'],
      poolerCpuRequest: map['poolerCpuRequest'].toString(),
      poolerCpuLimit: map['poolerCpuLimit'].toString(),
      poolerMemoryRequest: map['poolerMemoryRequest'].toString(),
      poolerMemoryLimit: map['poolerMemoryLimit'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "enabled": enabled,
      "mode": mode,
      "maxConnections": maxConnections,
      "defaultPoolSize": defaultPoolSize,
      "port": port,
      "readWriteSplitting": readWriteSplitting,
      "poolerCpuRequest": poolerCpuRequest,
      "poolerCpuLimit": poolerCpuLimit,
      "poolerMemoryRequest": poolerMemoryRequest,
      "poolerMemoryLimit": poolerMemoryLimit,
    };
  }
}
