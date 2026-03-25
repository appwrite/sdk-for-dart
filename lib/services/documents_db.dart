part of '../dart_appwrite.dart';

class DocumentsDB extends Service {
  DocumentsDB(super.client);

  /// Get a list of all databases from the current Appwrite project. You can use
  /// the search parameter to filter your results.
  Future<models.DatabaseList> list(
      {List<String>? queries, String? search, bool? total}) async {
    final String apiPath = '/documentsdb';

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
    final String apiPath = '/documentsdb';

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

  Future<models.TransactionList> listTransactions(
      {List<String>? queries}) async {
    final String apiPath = '/documentsdb/transactions';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.TransactionList.fromMap(res.data);
  }

  Future<models.Transaction> createTransaction({int? ttl}) async {
    final String apiPath = '/documentsdb/transactions';

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

  Future<models.Transaction> getTransaction(
      {required String transactionId}) async {
    final String apiPath = '/documentsdb/transactions/{transactionId}'
        .replaceAll('{transactionId}', transactionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Transaction.fromMap(res.data);
  }

  Future<models.Transaction> updateTransaction(
      {required String transactionId, bool? commit, bool? rollback}) async {
    final String apiPath = '/documentsdb/transactions/{transactionId}'
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

  Future deleteTransaction({required String transactionId}) async {
    final String apiPath = '/documentsdb/transactions/{transactionId}'
        .replaceAll('{transactionId}', transactionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  Future<models.Transaction> createOperations(
      {required String transactionId, List<Map>? operations}) async {
    final String apiPath =
        '/documentsdb/transactions/{transactionId}/operations'
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
        '/documentsdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

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
        '/documentsdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

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
        '/documentsdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all collections that belong to the provided databaseId. You
  /// can use the search parameter to filter your results.
  Future<models.CollectionList> listCollections(
      {required String databaseId,
      List<String>? queries,
      String? search,
      bool? total}) async {
    final String apiPath = '/documentsdb/{databaseId}/collections'
        .replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.CollectionList.fromMap(res.data);
  }

  /// Create a new Collection. Before using this route, you should create a new
  /// database resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#documentsDBCreateCollection)
  /// API or directly from your database console.
  Future<models.Collection> createCollection(
      {required String databaseId,
      required String collectionId,
      required String name,
      List<String>? permissions,
      bool? documentSecurity,
      bool? enabled,
      List<Map>? attributes,
      List<Map>? indexes}) async {
    final String apiPath = '/documentsdb/{databaseId}/collections'
        .replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {
      'collectionId': collectionId,
      'name': name,
      'permissions': permissions,
      if (documentSecurity != null) 'documentSecurity': documentSecurity,
      if (enabled != null) 'enabled': enabled,
      if (attributes != null) 'attributes': attributes,
      if (indexes != null) 'indexes': indexes,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Collection.fromMap(res.data);
  }

  /// Get a collection by its unique ID. This endpoint response returns a JSON
  /// object with the collection metadata.
  Future<models.Collection> getCollection(
      {required String databaseId, required String collectionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Collection.fromMap(res.data);
  }

  /// Update a collection by its unique ID.
  Future<models.Collection> updateCollection(
      {required String databaseId,
      required String collectionId,
      required String name,
      List<String>? permissions,
      bool? documentSecurity,
      bool? enabled}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      if (permissions != null) 'permissions': permissions,
      if (documentSecurity != null) 'documentSecurity': documentSecurity,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Collection.fromMap(res.data);
  }

  /// Delete a collection by its unique ID. Only users with write permissions
  /// have access to delete this resource.
  Future deleteCollection(
      {required String databaseId, required String collectionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all the user's documents in a given collection. You can use
  /// the query params to filter your results.
  Future<models.DocumentList> listDocuments(
      {required String databaseId,
      required String collectionId,
      List<String>? queries,
      String? transactionId,
      bool? total,
      int? ttl}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (transactionId != null) 'transactionId': transactionId,
      if (total != null) 'total': total,
      if (ttl != null) 'ttl': ttl,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.DocumentList.fromMap(res.data);
  }

  /// Create a new Document. Before using this route, you should create a new
  /// collection resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#documentsDBCreateCollection)
  /// API or directly from your database console.
  Future<models.Document> createDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      required Map data,
      List<String>? permissions}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'documentId': documentId,
      'data': data,
      if (permissions != null) 'permissions': permissions,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Document.fromMap(res.data);
  }

  /// Create new Documents. Before using this route, you should create a new
  /// collection resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#documentsDBCreateCollection)
  /// API or directly from your database console.
  Future<models.DocumentList> createDocuments(
      {required String databaseId,
      required String collectionId,
      required List<Map> documents}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'documents': documents,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.DocumentList.fromMap(res.data);
  }

  /// Create or update Documents. Before using this route, you should create a
  /// new collection resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#documentsDBCreateCollection)
  /// API or directly from your database console.
  ///
  Future<models.DocumentList> upsertDocuments(
      {required String databaseId,
      required String collectionId,
      required List<Map> documents,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'documents': documents,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.DocumentList.fromMap(res.data);
  }

  /// Update all documents that match your queries, if no queries are submitted
  /// then all documents are updated. You can pass only specific fields to be
  /// updated.
  Future<models.DocumentList> updateDocuments(
      {required String databaseId,
      required String collectionId,
      Map? data,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

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

    return models.DocumentList.fromMap(res.data);
  }

  /// Bulk delete documents using queries, if no queries are passed then all
  /// documents are deleted.
  Future<models.DocumentList> deleteDocuments(
      {required String databaseId,
      required String collectionId,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.DocumentList.fromMap(res.data);
  }

  /// Get a document by its unique ID. This endpoint response returns a JSON
  /// object with the document data.
  Future<models.Document> getDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents/{documentId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (transactionId != null) 'transactionId': transactionId,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Document.fromMap(res.data);
  }

  /// Create or update a Document. Before using this route, you should create a
  /// new collection resource using either a [server
  /// integration](https://appwrite.io/docs/server/databases#documentsDBCreateCollection)
  /// API or directly from your database console.
  Future<models.Document> upsertDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      Map? data,
      List<String>? permissions,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents/{documentId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId);

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

    return models.Document.fromMap(res.data);
  }

  /// Update a document by its unique ID. Using the patch method you can pass
  /// only specific fields that will get updated.
  Future<models.Document> updateDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      Map? data,
      List<String>? permissions,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents/{documentId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId);

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

    return models.Document.fromMap(res.data);
  }

  /// Delete a document by its unique ID.
  Future deleteDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents/{documentId}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId);

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
  Future<models.Document> decrementDocumentAttribute(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      required String attribute,
      double? value,
      double? min,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents/{documentId}/{attribute}/decrement'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId)
            .replaceAll('{attribute}', attribute);

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

    return models.Document.fromMap(res.data);
  }

  /// Increment a specific column of a row by a given value.
  Future<models.Document> incrementDocumentAttribute(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      required String attribute,
      double? value,
      double? max,
      String? transactionId}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/documents/{documentId}/{attribute}/increment'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{documentId}', documentId)
            .replaceAll('{attribute}', attribute);

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

    return models.Document.fromMap(res.data);
  }

  /// List indexes in the collection.
  Future<models.IndexList> listIndexes(
      {required String databaseId,
      required String collectionId,
      List<String>? queries,
      bool? total}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/indexes'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.IndexList.fromMap(res.data);
  }

  /// Creates an index on the attributes listed. Your index should include all
  /// the attributes you will query in a single request.
  /// Attributes can be `key`, `fulltext`, and `unique`.
  Future<models.Index> createIndex(
      {required String databaseId,
      required String collectionId,
      required String key,
      required enums.DocumentsDBIndexType type,
      required List<String> attributes,
      List<enums.OrderBy>? orders,
      List<int>? lengths}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/indexes'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'type': type.value,
      'attributes': attributes,
      if (orders != null) 'orders': orders.map((e) => e.value).toList(),
      if (lengths != null) 'lengths': lengths,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Index.fromMap(res.data);
  }

  /// Get index by ID.
  Future<models.Index> getIndex(
      {required String databaseId,
      required String collectionId,
      required String key}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/indexes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Index.fromMap(res.data);
  }

  /// Delete an index.
  Future deleteIndex(
      {required String databaseId,
      required String collectionId,
      required String key}) async {
    final String apiPath =
        '/documentsdb/{databaseId}/collections/{collectionId}/indexes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }
}
