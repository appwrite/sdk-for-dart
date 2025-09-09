part of '../dart_appwrite.dart';

/// The Databases service allows you to create structured collections of
/// documents, query and filter lists of documents
class Databases extends Service {
  Databases(super.client);

  /// Get a list of all databases from the current Appwrite project. You can use
  /// the search parameter to filter your results.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.list` instead.',
  )
  Future<models.DatabaseList> list({
    List<String>? queries,
    String? search,
  }) async {
    final String apiPath = '/databases';

    final Map<String, dynamic> apiParams = {
      'queries': queries,
      'search': search,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DatabaseList.fromMap(res.data);
  }

  /// Create a new Database.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.create` instead.',
  )
  Future<models.Database> create({
    required String databaseId,
    required String name,
    bool? enabled,
  }) async {
    final String apiPath = '/databases';

    final Map<String, dynamic> apiParams = {
      'databaseId': databaseId,
      'name': name,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Database.fromMap(res.data);
  }

  /// Get a database by its unique ID. This endpoint response returns a JSON
  /// object with the database metadata.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.get` instead.',
  )
  Future<models.Database> get({required String databaseId}) async {
    final String apiPath = '/databases/{databaseId}'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Database.fromMap(res.data);
  }

  /// Update a database by its unique ID.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.update` instead.',
  )
  Future<models.Database> update({
    required String databaseId,
    required String name,
    bool? enabled,
  }) async {
    final String apiPath = '/databases/{databaseId}'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {'name': name, 'enabled': enabled};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Database.fromMap(res.data);
  }

  /// Delete a database by its unique ID. Only API keys with with databases.write
  /// scope can delete a database.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.delete` instead.',
  )
  Future delete({required String databaseId}) async {
    final String apiPath = '/databases/{databaseId}'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Get a list of all collections that belong to the provided databaseId. You
  /// can use the search parameter to filter your results.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.listTables` instead.',
  )
  Future<models.CollectionList> listCollections({
    required String databaseId,
    List<String>? queries,
    String? search,
  }) async {
    final String apiPath = '/databases/{databaseId}/collections'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      'queries': queries,
      'search': search,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.CollectionList.fromMap(res.data);
  }

  /// Create a new Collection. Before using this route, you should create a new
  /// database resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#databasesCreateCollection)
  /// API or directly from your database console.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createTable` instead.',
  )
  Future<models.Collection> createCollection({
    required String databaseId,
    required String collectionId,
    required String name,
    List<String>? permissions,
    bool? documentSecurity,
    bool? enabled,
  }) async {
    final String apiPath = '/databases/{databaseId}/collections'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      'collectionId': collectionId,
      'name': name,
      'permissions': permissions,
      'documentSecurity': documentSecurity,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Collection.fromMap(res.data);
  }

  /// Get a collection by its unique ID. This endpoint response returns a JSON
  /// object with the collection metadata.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.getTable` instead.',
  )
  Future<models.Collection> getCollection({
    required String databaseId,
    required String collectionId,
  }) async {
    final String apiPath = '/databases/{databaseId}/collections/{collectionId}'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Collection.fromMap(res.data);
  }

  /// Update a collection by its unique ID.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateTable` instead.',
  )
  Future<models.Collection> updateCollection({
    required String databaseId,
    required String collectionId,
    required String name,
    List<String>? permissions,
    bool? documentSecurity,
    bool? enabled,
  }) async {
    final String apiPath = '/databases/{databaseId}/collections/{collectionId}'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'permissions': permissions,
      'documentSecurity': documentSecurity,
      'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Collection.fromMap(res.data);
  }

  /// Delete a collection by its unique ID. Only users with write permissions
  /// have access to delete this resource.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.deleteTable` instead.',
  )
  Future deleteCollection({
    required String databaseId,
    required String collectionId,
  }) async {
    final String apiPath = '/databases/{databaseId}/collections/{collectionId}'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// List attributes in the collection.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.listColumns` instead.',
  )
  Future<models.AttributeList> listAttributes({
    required String databaseId,
    required String collectionId,
    List<String>? queries,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {'queries': queries};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeList.fromMap(res.data);
  }

  /// Create a boolean attribute.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createBooleanColumn` instead.',
  )
  Future<models.AttributeBoolean> createBooleanAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    bool? xdefault,
    bool? array,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/boolean'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
      'array': array,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeBoolean.fromMap(res.data);
  }

  /// Update a boolean attribute. Changing the `default` value will not update
  /// already existing documents.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateBooleanColumn` instead.',
  )
  Future<models.AttributeBoolean> updateBooleanAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    required bool? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/boolean/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeBoolean.fromMap(res.data);
  }

  /// Create a date time attribute according to the ISO 8601 standard.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createDatetimeColumn` instead.',
  )
  Future<models.AttributeDatetime> createDatetimeAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    String? xdefault,
    bool? array,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/datetime'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
      'array': array,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeDatetime.fromMap(res.data);
  }

  /// Update a date time attribute. Changing the `default` value will not update
  /// already existing documents.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateDatetimeColumn` instead.',
  )
  Future<models.AttributeDatetime> updateDatetimeAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    required String? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/datetime/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeDatetime.fromMap(res.data);
  }

  /// Create an email attribute.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createEmailColumn` instead.',
  )
  Future<models.AttributeEmail> createEmailAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    String? xdefault,
    bool? array,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/email'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
      'array': array,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeEmail.fromMap(res.data);
  }

  /// Update an email attribute. Changing the `default` value will not update
  /// already existing documents.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateEmailColumn` instead.',
  )
  Future<models.AttributeEmail> updateEmailAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    required String? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/email/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeEmail.fromMap(res.data);
  }

  /// Create an enum attribute. The `elements` param acts as a white-list of
  /// accepted values for this attribute.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createEnumColumn` instead.',
  )
  Future<models.AttributeEnum> createEnumAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required List<String> elements,
    required bool xrequired,
    String? xdefault,
    bool? array,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/enum'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'elements': elements,
      'required': xrequired,
      'default': xdefault,
      'array': array,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeEnum.fromMap(res.data);
  }

  /// Update an enum attribute. Changing the `default` value will not update
  /// already existing documents.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateEnumColumn` instead.',
  )
  Future<models.AttributeEnum> updateEnumAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required List<String> elements,
    required bool xrequired,
    required String? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/enum/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'elements': elements,
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeEnum.fromMap(res.data);
  }

  /// Create a float attribute. Optionally, minimum and maximum values can be
  /// provided.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createFloatColumn` instead.',
  )
  Future<models.AttributeFloat> createFloatAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    double? min,
    double? max,
    double? xdefault,
    bool? array,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/float'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'min': min,
      'max': max,
      'default': xdefault,
      'array': array,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeFloat.fromMap(res.data);
  }

  /// Update a float attribute. Changing the `default` value will not update
  /// already existing documents.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateFloatColumn` instead.',
  )
  Future<models.AttributeFloat> updateFloatAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    required double? xdefault,
    double? min,
    double? max,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/float/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'min': min,
      'max': max,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeFloat.fromMap(res.data);
  }

  /// Create an integer attribute. Optionally, minimum and maximum values can be
  /// provided.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createIntegerColumn` instead.',
  )
  Future<models.AttributeInteger> createIntegerAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    int? min,
    int? max,
    int? xdefault,
    bool? array,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/integer'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'min': min,
      'max': max,
      'default': xdefault,
      'array': array,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeInteger.fromMap(res.data);
  }

  /// Update an integer attribute. Changing the `default` value will not update
  /// already existing documents.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateIntegerColumn` instead.',
  )
  Future<models.AttributeInteger> updateIntegerAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    required int? xdefault,
    int? min,
    int? max,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/integer/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'min': min,
      'max': max,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeInteger.fromMap(res.data);
  }

  /// Create IP address attribute.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createIpColumn` instead.',
  )
  Future<models.AttributeIp> createIpAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    String? xdefault,
    bool? array,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/ip'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
      'array': array,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeIp.fromMap(res.data);
  }

  /// Update an ip attribute. Changing the `default` value will not update
  /// already existing documents.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateIpColumn` instead.',
  )
  Future<models.AttributeIp> updateIpAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    required String? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/ip/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeIp.fromMap(res.data);
  }

  /// Create a geometric line attribute.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createLineColumn` instead.',
  )
  Future<models.AttributeLine> createLineAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    List? xdefault,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/line'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeLine.fromMap(res.data);
  }

  /// Update a line attribute. Changing the `default` value will not update
  /// already existing documents.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateLineColumn` instead.',
  )
  Future<models.AttributeLine> updateLineAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    List? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/line/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeLine.fromMap(res.data);
  }

  /// Create a geometric point attribute.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createPointColumn` instead.',
  )
  Future<models.AttributePoint> createPointAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    List? xdefault,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/point'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributePoint.fromMap(res.data);
  }

  /// Update a point attribute. Changing the `default` value will not update
  /// already existing documents.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updatePointColumn` instead.',
  )
  Future<models.AttributePoint> updatePointAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    List? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/point/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributePoint.fromMap(res.data);
  }

  /// Create a geometric polygon attribute.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createPolygonColumn` instead.',
  )
  Future<models.AttributePolygon> createPolygonAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    List? xdefault,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/polygon'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributePolygon.fromMap(res.data);
  }

  /// Update a polygon attribute. Changing the `default` value will not update
  /// already existing documents.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updatePolygonColumn` instead.',
  )
  Future<models.AttributePolygon> updatePolygonAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    List? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/polygon/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributePolygon.fromMap(res.data);
  }

  /// Create relationship attribute. [Learn more about relationship
  /// attributes](https://appwrite.io/docs/databases-relationships#relationship-attributes).
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createRelationshipColumn` instead.',
  )
  Future<models.AttributeRelationship> createRelationshipAttribute({
    required String databaseId,
    required String collectionId,
    required String relatedCollectionId,
    required enums.RelationshipType type,
    bool? twoWay,
    String? key,
    String? twoWayKey,
    enums.RelationMutate? onDelete,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/relationship'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'relatedCollectionId': relatedCollectionId,
      'type': type.value,
      'twoWay': twoWay,
      'key': key,
      'twoWayKey': twoWayKey,
      'onDelete': onDelete?.value,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeRelationship.fromMap(res.data);
  }

  /// Create a string attribute.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createStringColumn` instead.',
  )
  Future<models.AttributeString> createStringAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required int size,
    required bool xrequired,
    String? xdefault,
    bool? array,
    bool? encrypt,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/string'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'size': size,
      'required': xrequired,
      'default': xdefault,
      'array': array,
      'encrypt': encrypt,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeString.fromMap(res.data);
  }

  /// Update a string attribute. Changing the `default` value will not update
  /// already existing documents.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateStringColumn` instead.',
  )
  Future<models.AttributeString> updateStringAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    required String? xdefault,
    int? size,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/string/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'size': size,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeString.fromMap(res.data);
  }

  /// Create a URL attribute.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createUrlColumn` instead.',
  )
  Future<models.AttributeUrl> createUrlAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    String? xdefault,
    bool? array,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/url'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'required': xrequired,
      'default': xdefault,
      'array': array,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeUrl.fromMap(res.data);
  }

  /// Update an url attribute. Changing the `default` value will not update
  /// already existing documents.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateUrlColumn` instead.',
  )
  Future<models.AttributeUrl> updateUrlAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    required bool xrequired,
    required String? xdefault,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/url/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'required': xrequired,
      'default': xdefault,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeUrl.fromMap(res.data);
  }

  /// Get attribute by ID.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.getColumn` instead.',
  )
  Future getAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Deletes an attribute.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.deleteColumn` instead.',
  )
  Future deleteAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Update relationship attribute. [Learn more about relationship
  /// attributes](https://appwrite.io/docs/databases-relationships#relationship-attributes).
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateRelationshipColumn` instead.',
  )
  Future<models.AttributeRelationship> updateRelationshipAttribute({
    required String databaseId,
    required String collectionId,
    required String key,
    enums.RelationMutate? onDelete,
    String? newKey,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/attributes/{key}/relationship'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'onDelete': onDelete?.value,
      'newKey': newKey,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AttributeRelationship.fromMap(res.data);
  }

  /// Get a list of all the user's documents in a given collection. You can use
  /// the query params to filter your results.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.listRows` instead.',
  )
  Future<models.DocumentList> listDocuments({
    required String databaseId,
    required String collectionId,
    List<String>? queries,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {'queries': queries};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DocumentList.fromMap(res.data);
  }

  /// Create a new Document. Before using this route, you should create a new
  /// collection resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#databasesCreateCollection)
  /// API or directly from your database console.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createRow` instead.',
  )
  Future<models.Document> createDocument({
    required String databaseId,
    required String collectionId,
    required String documentId,
    required Map data,
    List<String>? permissions,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'documentId': documentId,
      'data': data,
      'permissions': permissions,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Document.fromMap(res.data);
  }

  /// Create new Documents. Before using this route, you should create a new
  /// collection resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#databasesCreateCollection)
  /// API or directly from your database console.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createRows` instead.',
  )
  Future<models.DocumentList> createDocuments({
    required String databaseId,
    required String collectionId,
    required List<Map> documents,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {'documents': documents};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DocumentList.fromMap(res.data);
  }

  /// Create or update Documents. Before using this route, you should create a
  /// new collection resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#databasesCreateCollection)
  /// API or directly from your database console.
  ///
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.upsertRows` instead.',
  )
  Future<models.DocumentList> upsertDocuments({
    required String databaseId,
    required String collectionId,
    required List<Map> documents,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {'documents': documents};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DocumentList.fromMap(res.data);
  }

  /// Update all documents that match your queries, if no queries are submitted
  /// then all documents are updated. You can pass only specific fields to be
  /// updated.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateRows` instead.',
  )
  Future<models.DocumentList> updateDocuments({
    required String databaseId,
    required String collectionId,
    Map? data,
    List<String>? queries,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {'data': data, 'queries': queries};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DocumentList.fromMap(res.data);
  }

  /// Bulk delete documents using queries, if no queries are passed then all
  /// documents are deleted.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.deleteRows` instead.',
  )
  Future<models.DocumentList> deleteDocuments({
    required String databaseId,
    required String collectionId,
    List<String>? queries,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {'queries': queries};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DocumentList.fromMap(res.data);
  }

  /// Get a document by its unique ID. This endpoint response returns a JSON
  /// object with the document data.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.getRow` instead.',
  )
  Future<models.Document> getDocument({
    required String databaseId,
    required String collectionId,
    required String documentId,
    List<String>? queries,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId);

    final Map<String, dynamic> apiParams = {'queries': queries};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Document.fromMap(res.data);
  }

  /// Create or update a Document. Before using this route, you should create a
  /// new collection resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#databasesCreateCollection)
  /// API or directly from your database console.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.upsertRow` instead.',
  )
  Future<models.Document> upsertDocument({
    required String databaseId,
    required String collectionId,
    required String documentId,
    required Map data,
    List<String>? permissions,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId);

    final Map<String, dynamic> apiParams = {
      'data': data,
      'permissions': permissions,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Document.fromMap(res.data);
  }

  /// Update a document by its unique ID. Using the patch method you can pass
  /// only specific fields that will get updated.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.updateRow` instead.',
  )
  Future<models.Document> updateDocument({
    required String databaseId,
    required String collectionId,
    required String documentId,
    Map? data,
    List<String>? permissions,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId);

    final Map<String, dynamic> apiParams = {
      'data': data,
      'permissions': permissions,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Document.fromMap(res.data);
  }

  /// Delete a document by its unique ID.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.deleteRow` instead.',
  )
  Future deleteDocument({
    required String databaseId,
    required String collectionId,
    required String documentId,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Decrement a specific attribute of a document by a given value.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.decrementRowColumn` instead.',
  )
  Future<models.Document> decrementDocumentAttribute({
    required String databaseId,
    required String collectionId,
    required String documentId,
    required String attribute,
    double? value,
    double? min,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}/{attribute}/decrement'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId)
            .replaceAll('{attribute}', attribute);

    final Map<String, dynamic> apiParams = {'value': value, 'min': min};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Document.fromMap(res.data);
  }

  /// Increment a specific attribute of a document by a given value.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.incrementRowColumn` instead.',
  )
  Future<models.Document> incrementDocumentAttribute({
    required String databaseId,
    required String collectionId,
    required String documentId,
    required String attribute,
    double? value,
    double? max,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}/{attribute}/increment'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId)
            .replaceAll('{attribute}', attribute);

    final Map<String, dynamic> apiParams = {'value': value, 'max': max};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Document.fromMap(res.data);
  }

  /// List indexes in the collection.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.listIndexes` instead.',
  )
  Future<models.IndexList> listIndexes({
    required String databaseId,
    required String collectionId,
    List<String>? queries,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/indexes'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {'queries': queries};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.IndexList.fromMap(res.data);
  }

  /// Creates an index on the attributes listed. Your index should include all
  /// the attributes you will query in a single request.
  /// Attributes can be `key`, `fulltext`, and `unique`.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.createIndex` instead.',
  )
  Future<models.Index> createIndex({
    required String databaseId,
    required String collectionId,
    required String key,
    required enums.IndexType type,
    required List<String> attributes,
    List<String>? orders,
    List<int>? lengths,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/indexes'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'type': type.value,
      'attributes': attributes,
      'orders': orders,
      'lengths': lengths,
    };

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Index.fromMap(res.data);
  }

  /// Get index by ID.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.getIndex` instead.',
  )
  Future<models.Index> getIndex({
    required String databaseId,
    required String collectionId,
    required String key,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/indexes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Index.fromMap(res.data);
  }

  /// Delete an index.
  @Deprecated(
    'This API has been deprecated since 1.8.0. Please use `TablesDB.deleteIndex` instead.',
  )
  Future deleteIndex({
    required String databaseId,
    required String collectionId,
    required String key,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/indexes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {'content-type': 'application/json'};

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }
}
