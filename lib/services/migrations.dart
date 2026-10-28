part of '../dart_appwrite.dart';

/// The Migrations service allows you to migrate third-party data to your
/// Appwrite project.
class Migrations extends Service {
  Migrations(super.client);

  /// List all migrations in the current project. This endpoint returns a list of
  /// all migrations including their status, progress, and any errors that
  /// occurred during the migration process.
  Future<models.MigrationList> list({
    List<String>? queries,
    String? search,
    bool? total,
  }) async {
    final String apiPath = '/migrations';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.MigrationList.fromMap(res.data);
  }

  /// Migrate data from another Appwrite project to your current project. This
  /// endpoint allows you to migrate resources like databases, collections,
  /// documents, users, and files from an existing Appwrite project.
  Future<models.Migration> createAppwriteMigration({
    required List<enums.AppwriteMigrationResource> resources,
    required String endpoint,
    required String projectId,
    required String apiKey,
    enums.OnDuplicate? onDuplicate,
  }) async {
    final String apiPath = '/migrations/appwrite';

    final Map<String, dynamic> apiParams = {
      'resources': resources.map((e) => e.value).toList(),
      'endpoint': endpoint,
      'projectId': projectId,
      'apiKey': apiKey,
      if (onDuplicate != null) 'onDuplicate': onDuplicate?.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Export documents to a CSV file from your Appwrite database. This endpoint
  /// allows you to export documents to a CSV file stored in a secure internal
  /// bucket. You'll receive an email with a download link when the export is
  /// complete.
  Future<models.Migration> createCSVExport({
    required String databaseId,
    required String collectionId,
    required String filename,
    List<String>? columns,
    List<String>? queries,
    String? delimiter,
    String? enclosure,
    String? escape,
    bool? header,
    bool? notify,
  }) async {
    final String apiPath = '/migrations/csv/exports';

    final Map<String, dynamic> apiParams = {
      'databaseId': databaseId,
      'collectionId': collectionId,
      'filename': filename,
      if (columns != null) 'columns': columns,
      if (queries != null) 'queries': queries,
      if (delimiter != null) 'delimiter': delimiter,
      if (enclosure != null) 'enclosure': enclosure,
      if (escape != null) 'escape': escape,
      if (header != null) 'header': header,
      if (notify != null) 'notify': notify,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Import documents from a CSV file into your Appwrite database. This endpoint
  /// allows you to import documents from a CSV file uploaded to Appwrite Storage
  /// bucket.
  Future<models.Migration> createCSVImport({
    required String bucketId,
    required String fileId,
    required String databaseId,
    required String collectionId,
    bool? internalFile,
    enums.OnDuplicate? onDuplicate,
  }) async {
    final String apiPath = '/migrations/csv/imports';

    final Map<String, dynamic> apiParams = {
      'bucketId': bucketId,
      'fileId': fileId,
      'databaseId': databaseId,
      'collectionId': collectionId,
      if (internalFile != null) 'internalFile': internalFile,
      if (onDuplicate != null) 'onDuplicate': onDuplicate?.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Migrate data from a Firebase project to your Appwrite project. This
  /// endpoint allows you to migrate resources like authentication and other
  /// supported services from a Firebase project.
  Future<models.Migration> createFirebaseMigration({
    required List<enums.FirebaseMigrationResource> resources,
    required String serviceAccount,
  }) async {
    final String apiPath = '/migrations/firebase';

    final Map<String, dynamic> apiParams = {
      'resources': resources.map((e) => e.value).toList(),
      'serviceAccount': serviceAccount,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Export documents to a JSON file from your Appwrite database. This endpoint
  /// allows you to export documents to a JSON file stored in a secure internal
  /// bucket. You'll receive an email with a download link when the export is
  /// complete.
  Future<models.Migration> createJSONExport({
    required String databaseId,
    required String collectionId,
    required String filename,
    List<String>? columns,
    List<String>? queries,
    bool? notify,
  }) async {
    final String apiPath = '/migrations/json/exports';

    final Map<String, dynamic> apiParams = {
      'databaseId': databaseId,
      'collectionId': collectionId,
      'filename': filename,
      if (columns != null) 'columns': columns,
      if (queries != null) 'queries': queries,
      if (notify != null) 'notify': notify,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Import documents from a JSON file into your Appwrite database. This
  /// endpoint allows you to import documents from a JSON file uploaded to
  /// Appwrite Storage bucket.
  Future<models.Migration> createJSONImport({
    required String bucketId,
    required String fileId,
    required String databaseId,
    required String collectionId,
    bool? internalFile,
    enums.OnDuplicate? onDuplicate,
  }) async {
    final String apiPath = '/migrations/json/imports';

    final Map<String, dynamic> apiParams = {
      'bucketId': bucketId,
      'fileId': fileId,
      'databaseId': databaseId,
      'collectionId': collectionId,
      if (internalFile != null) 'internalFile': internalFile,
      if (onDuplicate != null) 'onDuplicate': onDuplicate?.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Migrate data from an NHost project to your Appwrite project. This endpoint
  /// allows you to migrate resources like authentication, databases, and other
  /// supported services from an NHost project.
  Future<models.Migration> createNHostMigration({
    required List<enums.NHostMigrationResource> resources,
    required String subdomain,
    required String region,
    required String adminSecret,
    required String database,
    required String username,
    required String password,
    int? port,
  }) async {
    final String apiPath = '/migrations/nhost';

    final Map<String, dynamic> apiParams = {
      'resources': resources.map((e) => e.value).toList(),
      'subdomain': subdomain,
      'region': region,
      'adminSecret': adminSecret,
      'database': database,
      'username': username,
      'password': password,
      if (port != null) 'port': port,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Migrate data from a Supabase project to your Appwrite project. This
  /// endpoint allows you to migrate resources like authentication, databases,
  /// and other supported services from a Supabase project.
  Future<models.Migration> createSupabaseMigration({
    required List<enums.SupabaseMigrationResource> resources,
    required String endpoint,
    required String apiKey,
    required String databaseHost,
    required String username,
    required String password,
    int? port,
  }) async {
    final String apiPath = '/migrations/supabase';

    final Map<String, dynamic> apiParams = {
      'resources': resources.map((e) => e.value).toList(),
      'endpoint': endpoint,
      'apiKey': apiKey,
      'databaseHost': databaseHost,
      'username': username,
      'password': password,
      if (port != null) 'port': port,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Get a migration by its unique ID. This endpoint returns detailed
  /// information about a specific migration including its current status,
  /// progress, and any errors that occurred during the migration process.
  Future<models.Migration> get({
    required String migrationId,
  }) async {
    if (migrationId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "migrationId"',
      );
    }

    final String apiPath = '/migrations/{migrationId}'.replaceAll(
      '{migrationId}',
      _encodePath(migrationId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Retry a failed migration. This endpoint allows you to retry a migration
  /// that has previously failed.
  Future<models.Migration> retry({
    required String migrationId,
  }) async {
    if (migrationId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "migrationId"',
      );
    }

    final String apiPath = '/migrations/{migrationId}'.replaceAll(
      '{migrationId}',
      _encodePath(migrationId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Migration.fromMap(res.data);
  }

  /// Delete a migration by its unique ID. This endpoint allows you to remove a
  /// migration from your project's migration history.
  Future delete({
    required String migrationId,
  }) async {
    if (migrationId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "migrationId"',
      );
    }

    final String apiPath = '/migrations/{migrationId}'.replaceAll(
      '{migrationId}',
      _encodePath(migrationId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }
}
