part of '../../models.dart';

/// Branch
class DedicatedDatabaseBranch implements Model {
  /// Branch identifier.
  final String branchId;

  /// Branch name.
  final String branchName;

  /// Kubernetes namespace where the branch is deployed.
  final String namespace;

  /// Unix timestamp when the branch expires.
  final int expiresAt;

  /// Branch hostname for direct connections.
  final String host;

  /// Branch port. Null until the backing reports one.
  final int port;

  /// Advertised catalog the client connects to. MySQL/MariaDB use default; Postgres uses the routing label.
  final String database;

  /// Database username. Shared with the parent database.
  final String username;

  /// Database password. Shared with the parent database.
  final String password;

  /// Whether SSL is required.
  final bool ssl;

  /// Database engine. Possible values: postgresql, mysql, mongodb.
  final String engine;

  /// Full connection string for the branch.
  final String connectionString;

  DedicatedDatabaseBranch({
    required this.branchId,
    required this.branchName,
    required this.namespace,
    required this.expiresAt,
    required this.host,
    required this.port,
    required this.database,
    required this.username,
    required this.password,
    required this.ssl,
    required this.engine,
    required this.connectionString,
  });
  factory DedicatedDatabaseBranch.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseBranch(
      branchId: map['branchId'].toString(),
      branchName: map['branchName'].toString(),
      namespace: map['namespace'].toString(),
      expiresAt: map['expiresAt'],
      host: map['host'].toString(),
      port: map['port'],
      database: map['database'].toString(),
      username: map['username'].toString(),
      password: map['password'].toString(),
      ssl: map['ssl'],
      engine: map['engine'].toString(),
      connectionString: map['connectionString'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "branchId": branchId,
      "branchName": branchName,
      "namespace": namespace,
      "expiresAt": expiresAt,
      "host": host,
      "port": port,
      "database": database,
      "username": username,
      "password": password,
      "ssl": ssl,
      "engine": engine,
      "connectionString": connectionString,
    };
  }
}
