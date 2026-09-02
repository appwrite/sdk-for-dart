import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseBranch', () {
    test('model', () {
      final model = DedicatedDatabaseBranch(
        branchId: "a1b2c3d4",
        branchName: "branch-a1b2c3d4",
        namespace: "db-myproject-mydb-branch-a1b2c3d4",
        expiresAt: 1711411200,
        host: "db-myproject-mydb-a1b2c3d4.fra.appwrite.center",
        port: 5432,
        database: "db-myproject-mydb-a1b2c3d4",
        username: "appwrite",
        password: "********",
        ssl: true,
        engine: "postgresql",
        connectionString:
            "postgresql://appwrite:****@db-myproject-mydb-a1b2c3d4.fra.appwrite.center:5432/db-myproject-mydb-a1b2c3d4?sslmode=require",
      );

      final map = model.toMap();
      final result = DedicatedDatabaseBranch.fromMap(map);

      expect(result.branchId, "a1b2c3d4");
      expect(result.branchName, "branch-a1b2c3d4");
      expect(result.namespace, "db-myproject-mydb-branch-a1b2c3d4");
      expect(result.expiresAt, 1711411200);
      expect(result.host, "db-myproject-mydb-a1b2c3d4.fra.appwrite.center");
      expect(result.port, 5432);
      expect(result.database, "db-myproject-mydb-a1b2c3d4");
      expect(result.username, "appwrite");
      expect(result.password, "********");
      expect(result.ssl, true);
      expect(result.engine, "postgresql");
      expect(
        result.connectionString,
        "postgresql://appwrite:****@db-myproject-mydb-a1b2c3d4.fra.appwrite.center:5432/db-myproject-mydb-a1b2c3d4?sslmode=require",
      );
    });
  });
}
