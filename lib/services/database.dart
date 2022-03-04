part of dart_appwrite;

     /// The Database service allows you to create structured collections of
     /// documents, query and filter lists of documents
class Database extends Service {
    Database(Client client): super(client);

     /// List Collections
     ///
     /// Get a list of all the user collections. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project's collections. [Learn more about different API
     /// modes](/docs/admin).
     ///
     Future<models.CollectionList> listCollections({String? search, int? limit, int? offset, String? cursor, String? cursorDirection, String? orderType}) async {
        final String path = '/database/collections';

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
     ///
     /// Create a new Collection.
     ///
     Future<models.Collection> createCollection({required String collectionId, required String name, required String permission, required List read, required List write}) async {
        final String path = '/database/collections';

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
     ///
     /// Get a collection by its unique ID. This endpoint response returns a JSON
     /// object with the collection metadata.
     ///
     Future<models.Collection> getCollection({required String collectionId}) async {
        final String path = '/database/collections/{collectionId}'.replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.Collection.fromMap(res.data);
    }

     /// Update Collection
     ///
     /// Update a collection by its unique ID.
     ///
     Future<models.Collection> updateCollection({required String collectionId, required String name, required String permission, List? read, List? write, bool? enabled}) async {
        final String path = '/database/collections/{collectionId}'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Delete a collection by its unique ID. Only users with write permissions
     /// have access to delete this resource.
     ///
     Future deleteCollection({required String collectionId}) async {
        final String path = '/database/collections/{collectionId}'.replaceAll('{collectionId}', collectionId);

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
        final String path = '/database/collections/{collectionId}/attributes'.replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.AttributeList.fromMap(res.data);
    }

     /// Create Boolean Attribute
     ///
     /// Create a boolean attribute.
     /// 
     ///
     Future<models.AttributeBoolean> createBooleanAttribute({required String collectionId, required String key, required bool xrequired, bool? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/boolean'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Create an email attribute.
     /// 
     ///
     Future<models.AttributeEmail> createEmailAttribute({required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/email'.replaceAll('{collectionId}', collectionId);

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
        final String path = '/database/collections/{collectionId}/attributes/enum'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Create a float attribute. Optionally, minimum and maximum values can be
     /// provided.
     /// 
     ///
     Future<models.AttributeFloat> createFloatAttribute({required String collectionId, required String key, required bool xrequired, double? min, double? max, double? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/float'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Create an integer attribute. Optionally, minimum and maximum values can be
     /// provided.
     /// 
     ///
     Future<models.AttributeInteger> createIntegerAttribute({required String collectionId, required String key, required bool xrequired, int? min, int? max, int? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/integer'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Create IP address attribute.
     /// 
     ///
     Future<models.AttributeIp> createIpAttribute({required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/ip'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Create a string attribute.
     /// 
     ///
     Future<models.AttributeString> createStringAttribute({required String collectionId, required String key, required int size, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/string'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Create a URL attribute.
     /// 
     ///
     Future<models.AttributeUrl> createUrlAttribute({required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/url'.replaceAll('{collectionId}', collectionId);

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
        final String path = '/database/collections/{collectionId}/attributes/{key}'.replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

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
        final String path = '/database/collections/{collectionId}/attributes/{key}'.replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Documents
     ///
     /// Get a list of all the user documents. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project's documents. [Learn more about different API
     /// modes](/docs/admin).
     ///
     Future<models.DocumentList> listDocuments({required String collectionId, List? queries, int? limit, int? offset, String? cursor, String? cursorDirection, List? orderAttributes, List? orderTypes}) async {
        final String path = '/database/collections/{collectionId}/documents'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Create a new Document. Before using this route, you should create a new
     /// collection resource using either a [server
     /// integration](/docs/server/database#databaseCreateCollection) API or
     /// directly from your database console.
     ///
     Future<models.Document> createDocument({required String collectionId, required String documentId, required Map data, List? read, List? write}) async {
        final String path = '/database/collections/{collectionId}/documents'.replaceAll('{collectionId}', collectionId);

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
     ///
     /// Get a document by its unique ID. This endpoint response returns a JSON
     /// object with the document data.
     ///
     Future<models.Document> getDocument({required String collectionId, required String documentId}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.Document.fromMap(res.data);
    }

     /// Update Document
     ///
     /// Update a document by its unique ID. Using the patch method you can pass
     /// only specific fields that will get updated.
     ///
     Future<models.Document> updateDocument({required String collectionId, required String documentId, required Map data, List? read, List? write}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

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
     ///
     /// Delete a document by its unique ID. This endpoint deletes only the parent
     /// documents, its attributes and relations to other documents. Child documents
     /// **will not** be deleted.
     ///
     Future deleteDocument({required String collectionId, required String documentId}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

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
        final String path = '/database/collections/{collectionId}/indexes'.replaceAll('{collectionId}', collectionId);

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
        final String path = '/database/collections/{collectionId}/indexes'.replaceAll('{collectionId}', collectionId);

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
        final String path = '/database/collections/{collectionId}/indexes/{key}'.replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

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
        final String path = '/database/collections/{collectionId}/indexes/{key}'.replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }
}