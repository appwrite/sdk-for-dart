part of dart_appwrite;

/// The Databases service allows you to create structured collections of
/// documents, query and filter lists of documents
class Databases extends Service {
    Databases(super.client);

    /// List databases
    ///
    /// Get a list of all databases from the current Appwrite project. You can use
    /// the search parameter to filter your results.
    Future<models.DatabaseList> list({List<String>? queries, String? search}) async {
        final String apiPath = '/databases';

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.DatabaseList.fromMap(res.data);

    }

    /// Create database
    ///
    /// Create a new Database.
    /// 
    Future<models.Database> create({required String databaseId, required String name, bool? enabled}) async {
        final String apiPath = '/databases';

        final Map<String, dynamic> apiParams = {
            
            'databaseId': databaseId,
'name': name,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Database.fromMap(res.data);

    }

    /// Get database
    ///
    /// Get a database by its unique ID. This endpoint response returns a JSON
    /// object with the database metadata.
    Future<models.Database> get({required String databaseId}) async {
        final String apiPath = '/databases/{databaseId}'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Database.fromMap(res.data);

    }

    /// Update database
    ///
    /// Update a database by its unique ID.
    Future<models.Database> update({required String databaseId, required String name, bool? enabled}) async {
        final String apiPath = '/databases/{databaseId}'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Database.fromMap(res.data);

    }

    /// Delete database
    ///
    /// Delete a database by its unique ID. Only API keys with with databases.write
    /// scope can delete a database.
    Future delete({required String databaseId}) async {
        final String apiPath = '/databases/{databaseId}'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// List collections
    ///
    /// Get a list of all collections that belong to the provided databaseId. You
    /// can use the search parameter to filter your results.
    Future<models.CollectionList> listCollections({required String databaseId, List<String>? queries, String? search}) async {
        final String apiPath = '/databases/{databaseId}/collections'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.CollectionList.fromMap(res.data);

    }

    /// Create collection
    ///
    /// Create a new Collection. Before using this route, you should create a new
    /// database resource using either a [server
    /// integration](https://appwrite.io/docs/server/databases#databasesCreateCollection)
    /// API or directly from your database console.
    Future<models.Collection> createCollection({required String databaseId, required String collectionId, required String name, List<String>? permissions, bool? documentSecurity, bool? enabled}) async {
        final String apiPath = '/databases/{databaseId}/collections'.replaceAll('{databaseId}', databaseId);

        final Map<String, dynamic> apiParams = {
            
            'collectionId': collectionId,
'name': name,
'permissions': permissions,
'documentSecurity': documentSecurity,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Collection.fromMap(res.data);

    }

    /// Get collection
    ///
    /// Get a collection by its unique ID. This endpoint response returns a JSON
    /// object with the collection metadata.
    Future<models.Collection> getCollection({required String databaseId, required String collectionId}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Collection.fromMap(res.data);

    }

    /// Update collection
    ///
    /// Update a collection by its unique ID.
    Future<models.Collection> updateCollection({required String databaseId, required String collectionId, required String name, List<String>? permissions, bool? documentSecurity, bool? enabled}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'permissions': permissions,
'documentSecurity': documentSecurity,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Collection.fromMap(res.data);

    }

    /// Delete collection
    ///
    /// Delete a collection by its unique ID. Only users with write permissions
    /// have access to delete this resource.
    Future deleteCollection({required String databaseId, required String collectionId}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// List attributes
    ///
    Future<models.AttributeList> listAttributes({required String databaseId, required String collectionId, List<String>? queries}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeList.fromMap(res.data);

    }

    /// Create boolean attribute
    ///
    /// Create a boolean attribute.
    /// 
    Future<models.AttributeBoolean> createBooleanAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, bool? xdefault, bool? array}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/boolean'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeBoolean.fromMap(res.data);

    }

    /// Update boolean attribute
    ///
    Future<models.AttributeBoolean> updateBooleanAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, required bool? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/boolean/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'required': xrequired,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeBoolean.fromMap(res.data);

    }

    /// Create datetime attribute
    ///
    Future<models.AttributeDatetime> createDatetimeAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/datetime'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeDatetime.fromMap(res.data);

    }

    /// Update dateTime attribute
    ///
    Future<models.AttributeDatetime> updateDatetimeAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, required String? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/datetime/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'required': xrequired,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeDatetime.fromMap(res.data);

    }

    /// Create email attribute
    ///
    /// Create an email attribute.
    /// 
    Future<models.AttributeEmail> createEmailAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/email'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeEmail.fromMap(res.data);

    }

    /// Update email attribute
    ///
    /// Update an email attribute. Changing the `default` value will not update
    /// already existing documents.
    /// 
    Future<models.AttributeEmail> updateEmailAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, required String? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/email/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'required': xrequired,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeEmail.fromMap(res.data);

    }

    /// Create enum attribute
    ///
    Future<models.AttributeEnum> createEnumAttribute({required String databaseId, required String collectionId, required String key, required List<String> elements, required bool xrequired, String? xdefault, bool? array}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/enum'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'elements': elements,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeEnum.fromMap(res.data);

    }

    /// Update enum attribute
    ///
    /// Update an enum attribute. Changing the `default` value will not update
    /// already existing documents.
    /// 
    Future<models.AttributeEnum> updateEnumAttribute({required String databaseId, required String collectionId, required String key, required List<String> elements, required bool xrequired, required String? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/enum/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'elements': elements,
'required': xrequired,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeEnum.fromMap(res.data);

    }

    /// Create float attribute
    ///
    /// Create a float attribute. Optionally, minimum and maximum values can be
    /// provided.
    /// 
    Future<models.AttributeFloat> createFloatAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, double? min, double? max, double? xdefault, bool? array}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/float'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'required': xrequired,
'min': min,
'max': max,
'default': xdefault,
'array': array,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeFloat.fromMap(res.data);

    }

    /// Update float attribute
    ///
    /// Update a float attribute. Changing the `default` value will not update
    /// already existing documents.
    /// 
    Future<models.AttributeFloat> updateFloatAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, required double min, required double max, required double? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/float/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'required': xrequired,
'min': min,
'max': max,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeFloat.fromMap(res.data);

    }

    /// Create integer attribute
    ///
    /// Create an integer attribute. Optionally, minimum and maximum values can be
    /// provided.
    /// 
    Future<models.AttributeInteger> createIntegerAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, int? min, int? max, int? xdefault, bool? array}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/integer'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'required': xrequired,
'min': min,
'max': max,
'default': xdefault,
'array': array,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeInteger.fromMap(res.data);

    }

    /// Update integer attribute
    ///
    /// Update an integer attribute. Changing the `default` value will not update
    /// already existing documents.
    /// 
    Future<models.AttributeInteger> updateIntegerAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, required int min, required int max, required int? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/integer/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'required': xrequired,
'min': min,
'max': max,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeInteger.fromMap(res.data);

    }

    /// Create IP address attribute
    ///
    /// Create IP address attribute.
    /// 
    Future<models.AttributeIp> createIpAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/ip'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeIp.fromMap(res.data);

    }

    /// Update IP address attribute
    ///
    /// Update an ip attribute. Changing the `default` value will not update
    /// already existing documents.
    /// 
    Future<models.AttributeIp> updateIpAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, required String? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/ip/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'required': xrequired,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeIp.fromMap(res.data);

    }

    /// Create relationship attribute
    ///
    /// Create relationship attribute. [Learn more about relationship
    /// attributes](https://appwrite.io/docs/databases-relationships#relationship-attributes).
    /// 
    Future<models.AttributeRelationship> createRelationshipAttribute({required String databaseId, required String collectionId, required String relatedCollectionId, required enums.RelationshipType type, bool? twoWay, String? key, String? twoWayKey, enums.RelationMutate? onDelete}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/relationship'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'relatedCollectionId': relatedCollectionId,
'type': type,
'twoWay': twoWay,
'key': key,
'twoWayKey': twoWayKey,
'onDelete': onDelete,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeRelationship.fromMap(res.data);

    }

    /// Create string attribute
    ///
    /// Create a string attribute.
    /// 
    Future<models.AttributeString> createStringAttribute({required String databaseId, required String collectionId, required String key, required int size, required bool xrequired, String? xdefault, bool? array, bool? encrypt}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/string'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'size': size,
'required': xrequired,
'default': xdefault,
'array': array,
'encrypt': encrypt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeString.fromMap(res.data);

    }

    /// Update string attribute
    ///
    /// Update a string attribute. Changing the `default` value will not update
    /// already existing documents.
    /// 
    Future<models.AttributeString> updateStringAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, required String? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/string/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'required': xrequired,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeString.fromMap(res.data);

    }

    /// Create URL attribute
    ///
    /// Create a URL attribute.
    /// 
    Future<models.AttributeUrl> createUrlAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, String? xdefault, bool? array}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/url'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'required': xrequired,
'default': xdefault,
'array': array,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeUrl.fromMap(res.data);

    }

    /// Update URL attribute
    ///
    /// Update an url attribute. Changing the `default` value will not update
    /// already existing documents.
    /// 
    Future<models.AttributeUrl> updateUrlAttribute({required String databaseId, required String collectionId, required String key, required bool xrequired, required String? xdefault}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/url/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'required': xrequired,
'default': xdefault,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeUrl.fromMap(res.data);

    }

    /// Get attribute
    ///
    Future getAttribute({required String databaseId, required String collectionId, required String key}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// Delete attribute
    ///
    Future deleteAttribute({required String databaseId, required String collectionId, required String key}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// Update relationship attribute
    ///
    /// Update relationship attribute. [Learn more about relationship
    /// attributes](https://appwrite.io/docs/databases-relationships#relationship-attributes).
    /// 
    Future<models.AttributeRelationship> updateRelationshipAttribute({required String databaseId, required String collectionId, required String key, enums.RelationMutate? onDelete}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/attributes/{key}/relationship'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            'onDelete': onDelete,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AttributeRelationship.fromMap(res.data);

    }

    /// List documents
    ///
    /// Get a list of all the user's documents in a given collection. You can use
    /// the query params to filter your results.
    Future<models.DocumentList> listDocuments({required String databaseId, required String collectionId, List<String>? queries}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/documents'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.DocumentList.fromMap(res.data);

    }

    /// Create document
    ///
    /// Create a new Document. Before using this route, you should create a new
    /// collection resource using either a [server
    /// integration](https://appwrite.io/docs/server/databases#databasesCreateCollection)
    /// API or directly from your database console.
    Future<models.Document> createDocument({required String databaseId, required String collectionId, required String documentId, required Map data, List<String>? permissions}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/documents'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'documentId': documentId,
'data': data,
'permissions': permissions,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Document.fromMap(res.data);

    }

    /// Get document
    ///
    /// Get a document by its unique ID. This endpoint response returns a JSON
    /// object with the document data.
    Future<models.Document> getDocument({required String databaseId, required String collectionId, required String documentId, List<String>? queries}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Document.fromMap(res.data);

    }

    /// Update document
    ///
    /// Update a document by its unique ID. Using the patch method you can pass
    /// only specific fields that will get updated.
    Future<models.Document> updateDocument({required String databaseId, required String collectionId, required String documentId, Map? data, List<String>? permissions}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> apiParams = {
            
            'data': data,
'permissions': permissions,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Document.fromMap(res.data);

    }

    /// Delete document
    ///
    /// Delete a document by its unique ID.
    Future deleteDocument({required String databaseId, required String collectionId, required String documentId}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/documents/{documentId}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{documentId}', documentId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// List indexes
    ///
    Future<models.IndexList> listIndexes({required String databaseId, required String collectionId, List<String>? queries}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/indexes'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.IndexList.fromMap(res.data);

    }

    /// Create index
    ///
    Future<models.Index> createIndex({required String databaseId, required String collectionId, required String key, required enums.IndexType type, required List<String> attributes, List<String>? orders}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/indexes'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'type': type,
'attributes': attributes,
'orders': orders,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Index.fromMap(res.data);

    }

    /// Get index
    ///
    Future<models.Index> getIndex({required String databaseId, required String collectionId, required String key}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/indexes/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Index.fromMap(res.data);

    }

    /// Delete index
    ///
    Future deleteIndex({required String databaseId, required String collectionId, required String key}) async {
        final String apiPath = '/databases/{databaseId}/collections/{collectionId}/indexes/{key}'.replaceAll('{databaseId}', databaseId).replaceAll('{collectionId}', collectionId).replaceAll('{key}', key);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }
}