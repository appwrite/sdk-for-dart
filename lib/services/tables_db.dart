part of '../dart_appwrite.dart';

class TablesDB extends Service {
  TablesDB(super.client);

  /// Get a list of all databases from the current Appwrite project. You can use
  /// the search parameter to filter your results.
  Future<models.DatabaseList> list(
      {List<String>? queries, String? search, bool? total}) async {
    final String apiPath = '/tablesdb';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.DatabaseList.fromMap(res.data);
  }

  /// Create a new Database.
  ///
  Future<models.Database> create(
      {required String databaseId, required String name, bool? enabled}) async {
    final String apiPath = '/tablesdb';

    final Map<String, dynamic> apiParams = {
      'databaseId': databaseId,
      'name': name,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Database.fromMap(res.data);
  }

  /// List transactions across all databases.
  Future<models.TransactionList> listTransactions(
      {List<String>? queries}) async {
    final String apiPath = '/tablesdb/transactions';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.TransactionList.fromMap(res.data);
  }

  /// Create a new transaction.
  Future<models.Transaction> createTransaction({int? ttl}) async {
    final String apiPath = '/tablesdb/transactions';

    final Map<String, dynamic> apiParams = {
      if (ttl != null) 'ttl': ttl,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Transaction.fromMap(res.data);
  }

  /// Get a transaction by its unique ID.
  Future<models.Transaction> getTransaction(
      {required String transactionId}) async {
    final String apiPath = '/tablesdb/transactions/{transactionId}'
        .replaceAll('{transactionId}', transactionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Transaction.fromMap(res.data);
  }

  /// Update a transaction, to either commit or roll back its operations.
  Future<models.Transaction> updateTransaction(
      {required String transactionId, bool? commit, bool? rollback}) async {
    final String apiPath = '/tablesdb/transactions/{transactionId}'
        .replaceAll('{transactionId}', transactionId);

    final Map<String, dynamic> apiParams = {
      if (commit != null) 'commit': commit,
      if (rollback != null) 'rollback': rollback,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Transaction.fromMap(res.data);
  }

  /// Delete a transaction by its unique ID.
  Future deleteTransaction({required String transactionId}) async {
    final String apiPath = '/tablesdb/transactions/{transactionId}'
        .replaceAll('{transactionId}', transactionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Create multiple operations in a single transaction.
  Future<models.Transaction> createOperations(
      {required String transactionId, List<Map>? operations}) async {
    final String apiPath = '/tablesdb/transactions/{transactionId}/operations'
        .replaceAll('{transactionId}', transactionId);

    final Map<String, dynamic> apiParams = {
      if (operations != null) 'operations': operations,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Transaction.fromMap(res.data);
  }

  /// Get a database by its unique ID. This endpoint response returns a JSON
  /// object with the database metadata.
  Future<models.Database> get({required String databaseId}) async {
    final String apiPath =
        '/tablesdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Database.fromMap(res.data);
  }

  /// Update a database by its unique ID.
  Future<models.Database> update(
      {required String databaseId, required String name, bool? enabled}) async {
    final String apiPath =
        '/tablesdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Database.fromMap(res.data);
  }

  /// Delete a database by its unique ID. Only API keys with with databases.write
  /// scope can delete a database.
  Future delete({required String databaseId}) async {
    final String apiPath =
        '/tablesdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all tables that belong to the provided databaseId. You can
  /// use the search parameter to filter your results.
  Future<models.TableList> listTables(
      {required String databaseId,
      List<String>? queries,
      String? search,
      bool? total}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.TableList.fromMap(res.data);
  }

  /// Create a new Table. Before using this route, you should create a new
  /// database resource using either a [server
  /// integration](https://appwrite.io/docs/references/cloud/server-dart/tablesDB#createTable)
  /// API or directly from your database console.
  Future<models.Table> createTable(
      {required String databaseId,
      required String tableId,
      required String name,
      List<String>? permissions,
      bool? rowSecurity,
      bool? enabled}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {
      'tableId': tableId,
      'name': name,
      if (permissions != null) 'permissions': permissions,
      if (rowSecurity != null) 'rowSecurity': rowSecurity,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Table.fromMap(res.data);
  }

  /// Get a table by its unique ID. This endpoint response returns a JSON object
  /// with the table metadata.
  Future<models.Table> getTable(
      {required String databaseId, required String tableId}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Table.fromMap(res.data);
  }

  /// Update a table by its unique ID.
  Future<models.Table> updateTable(
      {required String databaseId,
      required String tableId,
      required String name,
      List<String>? permissions,
      bool? rowSecurity,
      bool? enabled}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      if (permissions != null) 'permissions': permissions,
      if (rowSecurity != null) 'rowSecurity': rowSecurity,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Table.fromMap(res.data);
  }

  /// Delete a table by its unique ID. Only users with write permissions have
  /// access to delete this resource.
  Future deleteTable(
      {required String databaseId, required String tableId}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// List columns in the table.
  Future<models.ColumnList> listColumns(
      {required String databaseId,
      required String tableId,
      List<String>? queries,
      bool? total}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/columns'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnList.fromMap(res.data);
  }

  /// Create a boolean column.
  ///
  Future<models.ColumnBoolean> createBooleanColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      bool? xdefault,
      bool? array}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/boolean'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnBoolean.fromMap(res.data);
  }

  /// Update a boolean column. Changing the `default` value will not update
  /// already existing rows.
  Future<models.ColumnBoolean> updateBooleanColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      required bool? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/boolean/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnBoolean.fromMap(res.data);
  }

  /// Create a date time column according to the ISO 8601 standard.
  Future<models.ColumnDatetime> createDatetimeColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      String? xdefault,
      bool? array}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/datetime'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnDatetime.fromMap(res.data);
  }

  /// Update a date time column. Changing the `default` value will not update
  /// already existing rows.
  Future<models.ColumnDatetime> updateDatetimeColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      required String? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/datetime/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnDatetime.fromMap(res.data);
  }

  /// Create an email column.
  ///
  Future<models.ColumnEmail> createEmailColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      String? xdefault,
      bool? array}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/email'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnEmail.fromMap(res.data);
  }

  /// Update an email column. Changing the `default` value will not update
  /// already existing rows.
  ///
  Future<models.ColumnEmail> updateEmailColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      required String? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/email/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnEmail.fromMap(res.data);
  }

  /// Create an enumeration column. The `elements` param acts as a white-list of
  /// accepted values for this column.
  Future<models.ColumnEnum> createEnumColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required List<String> elements,
      required bool xrequired,
      String? xdefault,
      bool? array}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/enum'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'elements': elements,
      'required': xrequired,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnEnum.fromMap(res.data);
  }

  /// Update an enum column. Changing the `default` value will not update already
  /// existing rows.
  ///
  Future<models.ColumnEnum> updateEnumColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required List<String> elements,
      required bool xrequired,
      required String? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/enum/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'elements': elements,
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnEnum.fromMap(res.data);
  }

  /// Create a float column. Optionally, minimum and maximum values can be
  /// provided.
  ///
  Future<models.ColumnFloat> createFloatColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      double? min,
      double? max,
      double? xdefault,
      bool? array}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/float'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      if (min != null) 'min': min,
      if (max != null) 'max': max,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnFloat.fromMap(res.data);
  }

  /// Update a float column. Changing the `default` value will not update already
  /// existing rows.
  ///
  Future<models.ColumnFloat> updateFloatColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      required double? xdefault,
      double? min,
      double? max,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/float/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      if (min != null) 'min': min,
      if (max != null) 'max': max,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnFloat.fromMap(res.data);
  }

  /// Create an integer column. Optionally, minimum and maximum values can be
  /// provided.
  ///
  Future<models.ColumnInteger> createIntegerColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      int? min,
      int? max,
      int? xdefault,
      bool? array}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/integer'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      if (min != null) 'min': min,
      if (max != null) 'max': max,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnInteger.fromMap(res.data);
  }

  /// Update an integer column. Changing the `default` value will not update
  /// already existing rows.
  ///
  Future<models.ColumnInteger> updateIntegerColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      required int? xdefault,
      int? min,
      int? max,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/integer/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      if (min != null) 'min': min,
      if (max != null) 'max': max,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnInteger.fromMap(res.data);
  }

  /// Create IP address column.
  ///
  Future<models.ColumnIp> createIpColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      String? xdefault,
      bool? array}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/columns/ip'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnIp.fromMap(res.data);
  }

  /// Update an ip column. Changing the `default` value will not update already
  /// existing rows.
  ///
  Future<models.ColumnIp> updateIpColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      required String? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/ip/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnIp.fromMap(res.data);
  }

  /// Create a geometric line column.
  Future<models.ColumnLine> createLineColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      List? xdefault}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/line'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnLine.fromMap(res.data);
  }

  /// Update a line column. Changing the `default` value will not update already
  /// existing rows.
  Future<models.ColumnLine> updateLineColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      List? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/line/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnLine.fromMap(res.data);
  }

  /// Create a geometric point column.
  Future<models.ColumnPoint> createPointColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      List? xdefault}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/point'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnPoint.fromMap(res.data);
  }

  /// Update a point column. Changing the `default` value will not update already
  /// existing rows.
  Future<models.ColumnPoint> updatePointColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      List? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/point/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnPoint.fromMap(res.data);
  }

  /// Create a geometric polygon column.
  Future<models.ColumnPolygon> createPolygonColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      List? xdefault}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/polygon'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnPolygon.fromMap(res.data);
  }

  /// Update a polygon column. Changing the `default` value will not update
  /// already existing rows.
  Future<models.ColumnPolygon> updatePolygonColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      List? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/polygon/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnPolygon.fromMap(res.data);
  }

  /// Create relationship column. [Learn more about relationship
  /// columns](https://appwrite.io/docs/databases-relationships#relationship-columns).
  ///
  Future<models.ColumnRelationship> createRelationshipColumn(
      {required String databaseId,
      required String tableId,
      required String relatedTableId,
      required enums.RelationshipType type,
      bool? twoWay,
      String? key,
      String? twoWayKey,
      enums.RelationMutate? onDelete}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/relationship'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'relatedTableId': relatedTableId,
      'type': type.value,
      if (twoWay != null) 'twoWay': twoWay,
      if (key != null) 'key': key,
      if (twoWayKey != null) 'twoWayKey': twoWayKey,
      if (onDelete != null) 'onDelete': onDelete!.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnRelationship.fromMap(res.data);
  }

  /// Create a string column.
  ///
  Future<models.ColumnString> createStringColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required int size,
      required bool xrequired,
      String? xdefault,
      bool? array,
      bool? encrypt}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/string'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'size': size,
      'required': xrequired,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
      if (encrypt != null) 'encrypt': encrypt,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnString.fromMap(res.data);
  }

  /// Update a string column. Changing the `default` value will not update
  /// already existing rows.
  ///
  Future<models.ColumnString> updateStringColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      required String? xdefault,
      int? size,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/string/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (size != null) 'size': size,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnString.fromMap(res.data);
  }

  /// Create a URL column.
  ///
  Future<models.ColumnUrl> createUrlColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      String? xdefault,
      bool? array}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/columns/url'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      if (xdefault != null) 'default': xdefault,
      if (array != null) 'array': array,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnUrl.fromMap(res.data);
  }

  /// Update an url column. Changing the `default` value will not update already
  /// existing rows.
  ///
  Future<models.ColumnUrl> updateUrlColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      required bool xrequired,
      required String? xdefault,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/url/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnUrl.fromMap(res.data);
  }

  /// Get column by ID.
  Future getColumn(
      {required String databaseId,
      required String tableId,
      required String key}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Deletes a column.
  Future deleteColumn(
      {required String databaseId,
      required String tableId,
      required String key}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Update relationship column. [Learn more about relationship
  /// columns](https://appwrite.io/docs/databases-relationships#relationship-columns).
  ///
  Future<models.ColumnRelationship> updateRelationshipColumn(
      {required String databaseId,
      required String tableId,
      required String key,
      enums.RelationMutate? onDelete,
      String? newKey}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/columns/{key}/relationship'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      if (onDelete != null) 'onDelete': onDelete!.value,
      if (newKey != null) 'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnRelationship.fromMap(res.data);
  }

  /// List indexes on the table.
  Future<models.ColumnIndexList> listIndexes(
      {required String databaseId,
      required String tableId,
      List<String>? queries,
      bool? total}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/indexes'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnIndexList.fromMap(res.data);
  }

  /// Creates an index on the columns listed. Your index should include all the
  /// columns you will query in a single request.
  /// Type can be `key`, `fulltext`, or `unique`.
  Future<models.ColumnIndex> createIndex(
      {required String databaseId,
      required String tableId,
      required String key,
      required enums.IndexType type,
      required List<String> columns,
      List<String>? orders,
      List<int>? lengths}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/indexes'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'type': type.value,
      'columns': columns,
      if (orders != null) 'orders': orders,
      if (lengths != null) 'lengths': lengths,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnIndex.fromMap(res.data);
  }

  /// Get index by ID.
  Future<models.ColumnIndex> getIndex(
      {required String databaseId,
      required String tableId,
      required String key}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/indexes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ColumnIndex.fromMap(res.data);
  }

  /// Delete an index.
  Future deleteIndex(
      {required String databaseId,
      required String tableId,
      required String key}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/indexes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all the user's rows in a given table. You can use the query
  /// params to filter your results.
  Future<models.RowList> listRows(
      {required String databaseId,
      required String tableId,
      List<String>? queries,
      String? transactionId,
      bool? total}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/rows'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (transactionId != null) 'transactionId': transactionId,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.RowList.fromMap(res.data);
  }

  /// Create a new Row. Before using this route, you should create a new table
  /// resource using either a [server
  /// integration](https://appwrite.io/docs/references/cloud/server-dart/tablesDB#createTable)
  /// API or directly from your database console.
  Future<models.Row> createRow(
      {required String databaseId,
      required String tableId,
      required String rowId,
      required Map data,
      List<String>? permissions,
      String? transactionId}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/rows'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'rowId': rowId,
      'data': data,
      if (permissions != null) 'permissions': permissions,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Row.fromMap(res.data);
  }

  /// Create new Rows. Before using this route, you should create a new table
  /// resource using either a [server
  /// integration](https://appwrite.io/docs/references/cloud/server-dart/tablesDB#createTable)
  /// API or directly from your database console.
  Future<models.RowList> createRows(
      {required String databaseId,
      required String tableId,
      required List<Map> rows,
      String? transactionId}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/rows'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'rows': rows,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.RowList.fromMap(res.data);
  }

  /// Create or update Rows. Before using this route, you should create a new
  /// table resource using either a [server
  /// integration](https://appwrite.io/docs/references/cloud/server-dart/tablesDB#createTable)
  /// API or directly from your database console.
  ///
  Future<models.RowList> upsertRows(
      {required String databaseId,
      required String tableId,
      required List<Map> rows,
      String? transactionId}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/rows'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      'rows': rows,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.RowList.fromMap(res.data);
  }

  /// Update all rows that match your queries, if no queries are submitted then
  /// all rows are updated. You can pass only specific fields to be updated.
  Future<models.RowList> updateRows(
      {required String databaseId,
      required String tableId,
      Map? data,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/rows'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      if (data != null) 'data': data,
      if (queries != null) 'queries': queries,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.RowList.fromMap(res.data);
  }

  /// Bulk delete rows using queries, if no queries are passed then all rows are
  /// deleted.
  Future<models.RowList> deleteRows(
      {required String databaseId,
      required String tableId,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath = '/tablesdb/{databaseId}/tables/{tableId}/rows'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{tableId}', tableId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.RowList.fromMap(res.data);
  }

  /// Get a row by its unique ID. This endpoint response returns a JSON object
  /// with the row data.
  Future<models.Row> getRow(
      {required String databaseId,
      required String tableId,
      required String rowId,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/rows/{rowId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{rowId}', rowId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Row.fromMap(res.data);
  }

  /// Create or update a Row. Before using this route, you should create a new
  /// table resource using either a [server
  /// integration](https://appwrite.io/docs/references/cloud/server-dart/tablesDB#createTable)
  /// API or directly from your database console.
  Future<models.Row> upsertRow(
      {required String databaseId,
      required String tableId,
      required String rowId,
      Map? data,
      List<String>? permissions,
      String? transactionId}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/rows/{rowId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{rowId}', rowId);

    final Map<String, dynamic> apiParams = {
      if (data != null) 'data': data,
      if (permissions != null) 'permissions': permissions,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Row.fromMap(res.data);
  }

  /// Update a row by its unique ID. Using the patch method you can pass only
  /// specific fields that will get updated.
  Future<models.Row> updateRow(
      {required String databaseId,
      required String tableId,
      required String rowId,
      Map? data,
      List<String>? permissions,
      String? transactionId}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/rows/{rowId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{rowId}', rowId);

    final Map<String, dynamic> apiParams = {
      if (data != null) 'data': data,
      if (permissions != null) 'permissions': permissions,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Row.fromMap(res.data);
  }

  /// Delete a row by its unique ID.
  Future deleteRow(
      {required String databaseId,
      required String tableId,
      required String rowId,
      String? transactionId}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/rows/{rowId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{rowId}', rowId);

    final Map<String, dynamic> apiParams = {
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Decrement a specific column of a row by a given value.
  Future<models.Row> decrementRowColumn(
      {required String databaseId,
      required String tableId,
      required String rowId,
      required String column,
      double? value,
      double? min,
      String? transactionId}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/rows/{rowId}/{column}/decrement'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{rowId}', rowId)
            .replaceAll('{column}', column);

    final Map<String, dynamic> apiParams = {
      if (value != null) 'value': value,
      if (min != null) 'min': min,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Row.fromMap(res.data);
  }

  /// Increment a specific column of a row by a given value.
  Future<models.Row> incrementRowColumn(
      {required String databaseId,
      required String tableId,
      required String rowId,
      required String column,
      double? value,
      double? max,
      String? transactionId}) async {
    final String apiPath =
        '/tablesdb/{databaseId}/tables/{tableId}/rows/{rowId}/{column}/increment'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{tableId}', tableId)
            .replaceAll('{rowId}', rowId)
            .replaceAll('{column}', column);

    final Map<String, dynamic> apiParams = {
      if (value != null) 'value': value,
      if (max != null) 'max': max,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Row.fromMap(res.data);
  }
}
