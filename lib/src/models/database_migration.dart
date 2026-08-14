part of '../../models.dart';

/// Database Migration
class DatabaseMigration implements Model {
    /// Database migration ID.
    final String $id;

    /// Migration creation time in ISO 8601 format.
    final String $createdAt;

    /// Migration update time in ISO 8601 format.
    final String $updatedAt;

    /// Project ID that owns the migrating database.
    final String projectId;

    /// Logical database ID being migrated.
    final String databaseId;

    /// Dedicated compute specification provisioned for the migration target.
    final String specification;

    /// Migration phase. Possible values: pending, provisioned, capturing, backfilling, catching_up, verifying, ready_to_cutover, cutover, soaking, done, failed, rolled_back.
    final String phase;

    /// Number of times a migration step has failed and been recorded.
    final int attempt;

    /// Reason the most recent migration step failed, empty while none has.
    final String lastError;

    /// Number of documents still pending replication to the target.
    final int lagDocuments;

    /// Time the migrated data was verified against the source in ISO 8601 format.
    final String verifiedAt;

    /// Time routing was flipped to the target in ISO 8601 format.
    final String cutoverAt;

    /// Time the post-cutover soak window ends in ISO 8601 format.
    final String soakUntil;

    /// Whether the migration cuts over automatically once ready. Set when the migration is created and never changed afterwards, so it always reports what was asked for.
    final bool autoCutover;

    /// Whether a cutover has been requested and not yet attempted. Set by the cutover endpoint and cleared when the attempt is made, so a cutover that fails a check parks the migration again rather than retrying on its own.
    final bool cutoverRequested;

    /// Whether the migration is paused.
    final bool paused;

    DatabaseMigration({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.projectId,
        required this.databaseId,
        required this.specification,
        required this.phase,
        required this.attempt,
        required this.lastError,
        required this.lagDocuments,
        required this.verifiedAt,
        required this.cutoverAt,
        required this.soakUntil,
        required this.autoCutover,
        required this.cutoverRequested,
        required this.paused,
    });

    factory DatabaseMigration.fromMap(Map<String, dynamic> map) {
        return DatabaseMigration(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            projectId: map['projectId'].toString(),
            databaseId: map['databaseId'].toString(),
            specification: map['specification'].toString(),
            phase: map['phase'].toString(),
            attempt: map['attempt'],
            lastError: map['lastError'].toString(),
            lagDocuments: map['lagDocuments'],
            verifiedAt: map['verifiedAt'].toString(),
            cutoverAt: map['cutoverAt'].toString(),
            soakUntil: map['soakUntil'].toString(),
            autoCutover: map['autoCutover'],
            cutoverRequested: map['cutoverRequested'],
            paused: map['paused'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "projectId": projectId,
            "databaseId": databaseId,
            "specification": specification,
            "phase": phase,
            "attempt": attempt,
            "lastError": lastError,
            "lagDocuments": lagDocuments,
            "verifiedAt": verifiedAt,
            "cutoverAt": cutoverAt,
            "soakUntil": soakUntil,
            "autoCutover": autoCutover,
            "cutoverRequested": cutoverRequested,
            "paused": paused,
        };
    }
}
