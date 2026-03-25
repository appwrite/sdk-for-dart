part of '../dart_appwrite.dart';

class VectorsDB extends Service {
  VectorsDB(super.client);

  Future<models.DatabaseList> list(
      {List<String>? queries, String? search, bool? total}) async {
    final String apiPath = '/vectorsdb';

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

  Future<models.Database> create(
      {required String databaseId, required String name, bool? enabled}) async {
    final String apiPath = '/vectorsdb';

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

  Future<models.EmbeddingList> createTextEmbeddings(
      {required List<String> texts, enums.Model? model}) async {
    final String apiPath = '/vectorsdb/embeddings/text';

    final Map<String, dynamic> apiParams = {
      'texts': texts,
      if (model != null) 'model': model.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.EmbeddingList.fromMap(res.data);
  }

  Future<models.TransactionList> listTransactions(
      {List<String>? queries}) async {
    final String apiPath = '/vectorsdb/transactions';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.TransactionList.fromMap(res.data);
  }

  Future<models.Transaction> createTransaction({int? ttl}) async {
    final String apiPath = '/vectorsdb/transactions';

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
    final String apiPath = '/vectorsdb/transactions/{transactionId}'
        .replaceAll('{transactionId}', transactionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Transaction.fromMap(res.data);
  }

  Future<models.Transaction> updateTransaction(
      {required String transactionId, bool? commit, bool? rollback}) async {
    final String apiPath = '/vectorsdb/transactions/{transactionId}'
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
    final String apiPath = '/vectorsdb/transactions/{transactionId}'
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
    final String apiPath = '/vectorsdb/transactions/{transactionId}/operations'
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

  Future<models.Database> get({required String databaseId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Database.fromMap(res.data);
  }

  Future<models.Database> update(
      {required String databaseId, required String name, bool? enabled}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

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

  Future delete({required String databaseId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  Future<models.VectorsdbCollectionList> listCollections(
      {required String databaseId,
      List<String>? queries,
      String? search,
      bool? total}) async {
    final String apiPath = '/vectorsdb/{databaseId}/collections'
        .replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VectorsdbCollectionList.fromMap(res.data);
  }

  Future<models.VectorsdbCollection> createCollection(
      {required String databaseId,
      required String collectionId,
      required String name,
      required int dimension,
      List<String>? permissions,
      bool? documentSecurity,
      bool? enabled}) async {
    final String apiPath = '/vectorsdb/{databaseId}/collections'
        .replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {
      'collectionId': collectionId,
      'name': name,
      'dimension': dimension,
      if (permissions != null) 'permissions': permissions,
      if (documentSecurity != null) 'documentSecurity': documentSecurity,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VectorsdbCollection.fromMap(res.data);
  }

  Future<models.VectorsdbCollection> getCollection(
      {required String databaseId, required String collectionId}) async {
    final String apiPath = '/vectorsdb/{databaseId}/collections/{collectionId}'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VectorsdbCollection.fromMap(res.data);
  }

  Future<models.VectorsdbCollection> updateCollection(
      {required String databaseId,
      required String collectionId,
      required String name,
      int? dimension,
      List<String>? permissions,
      bool? documentSecurity,
      bool? enabled}) async {
    final String apiPath = '/vectorsdb/{databaseId}/collections/{collectionId}'
        .replaceAll('{databaseId}', databaseId)
        .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      if (dimension != null) 'dimension': dimension,
      if (permissions != null) 'permissions': permissions,
      if (documentSecurity != null) 'documentSecurity': documentSecurity,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VectorsdbCollection.fromMap(res.data);
  }

  Future deleteCollection(
      {required String databaseId, required String collectionId}) async {
    final String apiPath = '/vectorsdb/{databaseId}/collections/{collectionId}'
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

  Future<models.DocumentList> listDocuments(
      {required String databaseId,
      required String collectionId,
      List<String>? queries,
      String? transactionId,
      bool? total,
      int? ttl}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents'
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

  Future<models.Document> createDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      required Map data,
      List<String>? permissions}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents'
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

  Future<models.DocumentList> createDocuments(
      {required String databaseId,
      required String collectionId,
      required List<Map> documents}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents'
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

  Future<models.DocumentList> upsertDocuments(
      {required String databaseId,
      required String collectionId,
      required List<Map> documents,
      String? transactionId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents'
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

  Future<models.DocumentList> updateDocuments(
      {required String databaseId,
      required String collectionId,
      Map? data,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents'
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

  Future<models.DocumentList> deleteDocuments(
      {required String databaseId,
      required String collectionId,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents'
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

  Future<models.Document> getDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      List<String>? queries,
      String? transactionId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents/{documentId}'
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

  Future<models.Document> upsertDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      Map? data,
      List<String>? permissions,
      String? transactionId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents/{documentId}'
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

  Future<models.Document> updateDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      Map? data,
      List<String>? permissions,
      String? transactionId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents/{documentId}'
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

  Future deleteDocument(
      {required String databaseId,
      required String collectionId,
      required String documentId,
      String? transactionId}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/documents/{documentId}'
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

  Future<models.IndexList> listIndexes(
      {required String databaseId,
      required String collectionId,
      List<String>? queries,
      bool? total}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/indexes'
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

  Future<models.Index> createIndex(
      {required String databaseId,
      required String collectionId,
      required String key,
      required enums.VectorsDBIndexType type,
      required List<String> attributes,
      List<enums.OrderBy>? orders,
      List<int>? lengths}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/indexes'
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

  Future<models.Index> getIndex(
      {required String databaseId,
      required String collectionId,
      required String key}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/indexes/{key}'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Index.fromMap(res.data);
  }

  Future deleteIndex(
      {required String databaseId,
      required String collectionId,
      required String key}) async {
    final String apiPath =
        '/vectorsdb/{databaseId}/collections/{collectionId}/indexes/{key}'
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
