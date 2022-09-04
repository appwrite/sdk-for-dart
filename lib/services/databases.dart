part of dart_appwrite;

    /// The Databases service allows you to create structured collections of
    /// documents, query and filter lists of documents
class Databases extends Service {
    Databases(super.client);

    /// List Databases
    ///
    /// Get a list of all databases from the current Appwrite project. You can use
    /// the search parameter to filter your results.
    ///
    Future<models.DatabaseList> list({List<String>? queries, String? search}) async {
        final String path = '/databases';

        final Map<String, dynamic> params = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.DatabaseList.fromMap(res.data);


    }
    /// Create Database
    ///
    /// Create a new Database.
    /// 
    ///
    Future<models.Database> create({required String databaseId, required String name}) async {
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
    ///
    /// Get a database by its unique ID. This endpoint response returns a JSON
    /// object with the database metadata.
    ///
    Future<models.Database> get({required String databaseId}) async {
        final String path = '/databases/{databaseId}'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Database.fromMap(res.data);


    }
    /// Update Database
    ///
    /// Update a database by its unique ID.
    ///
    Future<models.Database> update({required String databaseId, required String name}) async {
        final String path = '/databases/{databaseId}'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            
            'name': name,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);

        return models.Database.fromMap(res.data);


    }
    /// Delete Database
    ///
    /// Delete a database by its unique ID. Only API keys with with databases.write
    /// scope can delete a database.
    ///
    Future delete({required String databaseId}) async {
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
    ///
    /// Get a list of all collections that belong to the provided databaseId. You
    /// can use the search parameter to filter your results.
    ///
    Future<models.CollectionList> listCollections({required String databaseId, List<String>? queries, String? search}) async {
        final String path = '/databases/{databaseId}/collections'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.CollectionList.fromMap(res.data);


    }
    /// Create Collection
    ///
    /// Create a new Collection. Before using this route, you should create a new
    /// database resource using either a [server
    /// integration](/docs/server/databases#databasesCreateCollection) API or
    /// directly from your database console.
    ///
    Future<models.Collection> createCollection({required String databaseId, required String collectionId, required String name, List<String>? permissions, bool? documentSecurity}) async {
        final String path = '/databases/{databaseId}/collections'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> params = {
            
            'collectionId': collectionId,
'name': name,
'permissions': permissions,
'documentSecurity': documentSecurity,

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
    Future<models.Collection> getCollection({required String databaseId, required String collectionId}) async {
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
    ///
    /// Update a collection by its unique ID.
    ///
    Future<models.Collection> updateCollection({required String databaseId, required String collectionId, required String name, List<String>? permissions, bool? documentSecurity, bool? enabled}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'name': name,
'permissions': permissions,
'documentSecurity': documentSecurity,
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
    Future deleteCollection({required String databaseId, required String collectionId}) async {
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
    Future<models.AttributeList> listAttributes({required String databaseId, required String collectionId}) async {
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
    ///
    /// Create a boolean attribute.
    /// 
    ///
    Future<models.AttributeBoolean> createBooleanAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, bool? xdefault, bool? array}) async {
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
    /// Create DateTime Attribute
    Future<models.AttributeDatetime> createDatetimeAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/attributes/datetime'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

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

        return models.AttributeDatetime.fromMap(res.data);


    }
    /// Create Email Attribute
    ///
    /// Create an email attribute.
    /// 
    ///
    Future<models.AttributeEmail> createEmailAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
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
    Future<models.AttributeEnum> createEnumAttribute({required String databaseId, required String collectionId, required String key, required List<String> elements, required bool xrequired, String? xdefault, bool? array}) async {
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
    ///
    /// Create a float attribute. Optionally, minimum and maximum values can be
    /// provided.
    /// 
    ///
    Future<models.AttributeFloat> createFloatAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, double? min, double? max, double? xdefault, bool? array}) async {
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
    ///
    /// Create an integer attribute. Optionally, minimum and maximum values can be
    /// provided.
    /// 
    ///
    Future<models.AttributeInteger> createIntegerAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, int? min, int? max, int? xdefault, bool? array}) async {
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
    ///
    /// Create IP address attribute.
    /// 
    ///
    Future<models.AttributeIp> createIpAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
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
    ///
    /// Create a string attribute.
    /// 
    ///
    Future<models.AttributeString> createStringAttribute({required String databaseId, required String collectionId, required String key, required int size, required bool xrequired, String? xdefault, bool? array}) async {
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
    ///
    /// Create a URL attribute.
    /// 
    ///
    Future<models.AttributeUrl> createUrlAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
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
    Future getAttribute({required String databaseId, required String collectionId, required String key}) async {
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
    Future deleteAttribute({required String databaseId, required String collectionId, required String key}) async {
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
    ///
    /// Get a list of all the user's documents in a given collection. You can use
    /// the query params to filter your results. On admin mode, this endpoint will
    /// return a list of all of documents belonging to the provided collectionId.
    /// [Learn more about different API modes](/docs/admin).
    ///
    Future<models.DocumentList> listDocuments({required String databaseId, required String collectionId, List<String>? queries}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/documents'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            'queries': queries,

            
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
    /// integration](/docs/server/databases#databasesCreateCollection) API or
    /// directly from your database console.
    ///
    Future<models.Document> createDocument({required String databaseId, required String collectionId, required String documentId, required Map data, List<String>? permissions}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/documents'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> params = {
            
            'documentId': documentId,
'data': data,
'permissions': permissions,

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
    Future<models.Document> getDocument({required String databaseId, required String collectionId, required String documentId}) async {
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
    ///
    /// Update a document by its unique ID. Using the patch method you can pass
    /// only specific fields that will get updated.
    ///
    Future<models.Document> updateDocument({required String databaseId, required String collectionId, required String documentId, Map? data, List<String>? permissions}) async {
        final String path = '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> params = {
            
            'data': data,
'permissions': permissions,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Document.fromMap(res.data);


    }
    /// Delete Document
    ///
    /// Delete a document by its unique ID.
    ///
    Future deleteDocument({required String databaseId, required String collectionId, required String documentId}) async {
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
    Future<models.IndexList> listIndexes({required String databaseId, required String collectionId}) async {
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
    Future<models.Index> createIndex({required String databaseId, required String collectionId, required String key, required String type, required List<String> attributes, List<String>? orders}) async {
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
    Future<models.Index> getIndex({required String databaseId, required String collectionId, required String key}) async {
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
    Future deleteIndex({required String databaseId, required String collectionId, required String key}) async {
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