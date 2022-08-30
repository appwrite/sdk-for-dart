part of dart_appwrite;

    /// The Databases service allows you to create structured collections of
    /// documents, query and filter lists of documents
class Databases extends Service {
    Databases(Client client, {required this.databaseId}): super(client);
    String databaseId;

    /// List Databases
    Future<models.DatabaseList> list({String? search, int? limit, int? offset, String? cursor, String? cursorDirection, String? orderType}) async {
        final String path = '/databases';

        final Map<String, dynamic> params = {
            'search': search,
'limit': limit,
'offset': offset,
'cursor': cursor,
'cursorDirection': cursorDirection,
'orderType': orderType,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.DatabaseList.fromMap(res.data);


    }

    /// Create Database
    Future<models.Database> create({required String name}) async {
        final String path = '/databases';

        final Map<String, dynamic> params = {
            
            'databaseId': databaseId,
'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Database.fromMap(res.data);


    }

    /// Get Database
    Future<models.Collection> get() async {
        final String path = '/databases/{databaseId}'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Collection.fromMap(res.data);


    }

    /// Update Database
    Future<models.Collection> update({required String name}) async {
        final String path = '/databases/{databaseId}'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            
            'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);

        return models.Collection.fromMap(res.data);


    }

    /// Delete Database
    Future delete() async {
        final String path = '/databases/{databaseId}'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }

    /// List Collections
    Future<models.CollectionList> listCollections({String? search, int? limit, int? offset, String? cursor, String? cursorDirection, String? orderType}) async {
        final String path = '/databases/{databaseId}/collections'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            'search': search,
'limit': limit,
'offset': offset,
'cursor': cursor,
'cursorDirection': cursorDirection,
'orderType': orderType,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.CollectionList.fromMap(res.data);


    }

    /// Create Collection
    Future<models.Collection> createCollection({required String collectionId, required String name, required String permission, required List read, required List write}) async {
        final String path = '/databases/{databaseId}/collections'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            
            'collectionId': collectionId,
'name': name,
'permission': permission,
'read': read,
'write': write,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Collection.fromMap(res.data);


    }

    /// Get Collection
    Future<models.Collection> getCollection({required String collectionId}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Collection.fromMap(res.data);


    }

    /// Update Collection
    Future<models.Collection> updateCollection({required String collectionId, required String name, required String permission, List? read, List? write, bool? enabled}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'name': name,
'permission': permission,
'read': read,
'write': write,
'enabled': enabled,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);

        return models.Collection.fromMap(res.data);


    }

    /// Delete Collection
    Future deleteCollection({required String collectionId}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }

    /// List Attributes
    Future<models.AttributeList> listAttributes({required String collectionId}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.AttributeList.fromMap(res.data);


    }

    /// Create Boolean Attribute
    Future<models.AttributeBoolean> createBooleanAttribute({required String collectionId, required String key, required bool xrequired, bool? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/boolean'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.AttributeBoolean.fromMap(res.data);


    }

    /// Create Email Attribute
    Future<models.AttributeEmail> createEmailAttribute({required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/email'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.AttributeEmail.fromMap(res.data);


    }

    /// Create Enum Attribute
    Future<models.AttributeEnum> createEnumAttribute({required String collectionId, required String key, required List elements, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/enum'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'elements': elements,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.AttributeEnum.fromMap(res.data);


    }

    /// Create Float Attribute
    Future<models.AttributeFloat> createFloatAttribute({required String collectionId, required String key, required bool xrequired, double? min, double? max, double? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/float'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'required': xrequired,
'min': min,
'max': max,
'default': xdefault,
'array': array,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.AttributeFloat.fromMap(res.data);


    }

    /// Create Integer Attribute
    Future<models.AttributeInteger> createIntegerAttribute({required String collectionId, required String key, required bool xrequired, int? min, int? max, int? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/integer'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'required': xrequired,
'min': min,
'max': max,
'default': xdefault,
'array': array,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.AttributeInteger.fromMap(res.data);


    }

    /// Create IP Address Attribute
    Future<models.AttributeIp> createIpAttribute({required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/ip'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.AttributeIp.fromMap(res.data);


    }

    /// Create String Attribute
    Future<models.AttributeString> createStringAttribute({required String collectionId, required String key, required int size, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/string'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'size': size,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.AttributeString.fromMap(res.data);


    }

    /// Create URL Attribute
    Future<models.AttributeUrl> createUrlAttribute({required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/url'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.AttributeUrl.fromMap(res.data);


    }

    /// Get Attribute
    Future getAttribute({required String collectionId, required String key}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return  res.data;


    }

    /// Delete Attribute
    Future deleteAttribute({required String collectionId, required String key}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }

    /// List Documents
    Future<models.DocumentList> listDocuments({required String collectionId, List? queries, int? limit, int? offset, String? cursor, String? cursorDirection, List? orderAttributes, List? orderTypes}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/documents'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            'queries': queries,
'limit': limit,
'offset': offset,
'cursor': cursor,
'cursorDirection': cursorDirection,
'orderAttributes': orderAttributes,
'orderTypes': orderTypes,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.DocumentList.fromMap(res.data);


    }

    /// Create Document
    Future<models.Document> createDocument({required String collectionId, required String documentId, required Map data, List? read, List? write}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/documents'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'documentId': documentId,
'data': data,
'read': read,
'write': write,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Document.fromMap(res.data);


    }

    /// Get Document
    Future<models.Document> getDocument({required String collectionId, required String documentId}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Document.fromMap(res.data);


    }

    /// Update Document
    Future<models.Document> updateDocument({required String collectionId, required String documentId, Map? data, List? read, List? write}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> params = {
            
            'data': data,
'read': read,
'write': write,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Document.fromMap(res.data);


    }

    /// Delete Document
    Future deleteDocument({required String collectionId, required String documentId}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }

    /// List Indexes
    Future<models.IndexList> listIndexes({required String collectionId}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/indexes'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.IndexList.fromMap(res.data);


    }

    /// Create Index
    Future<models.Index> createIndex({required String collectionId, required String key, required String type, required List attributes, List? orders}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/indexes'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'type': type,
'attributes': attributes,
'orders': orders,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Index.fromMap(res.data);


    }

    /// Get Index
    Future<models.Index> getIndex({required String collectionId, required String key}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/indexes/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Index.fromMap(res.data);


    }

    /// Delete Index
    Future deleteIndex({required String collectionId, required String key}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/indexes/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
}