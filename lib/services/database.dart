
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import "../client.dart";
import '../enums.dart';
import "../service.dart";

class Database extends Service {
    Database(Client client): super(client);

     /// List Collections
     ///
     /// Get a list of all the user collections. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project's collections. [Learn more about different API
     /// modes](/docs/admin).
     ///
    Future<Response> listCollections({String search = '', int limit = 25, int offset = 0, OrderType orderType = OrderType.asc}) {
        final String path = '/database/collections';

        final Map<String, dynamic> params = {
            'search': search,
            'limit': limit,
            'offset': offset,
            'orderType': orderType.name(),
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Create Collection
     ///
     /// Create a new Collection.
     ///
    Future<Response> createCollection({@required String name, @required List read, @required List write, @required List rules}) {
        final String path = '/database/collections';

        final Map<String, dynamic> params = {
            'name': name,
            'read': read,
            'write': write,
            'rules': rules,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.post, path: path, params: params, headers: headers);
    }

     /// Get Collection
     ///
     /// Get a collection by its unique ID. This endpoint response returns a JSON
     /// object with the collection metadata.
     ///
    Future<Response> getCollection({@required String collectionId}) {
        final String path = '/database/collections/{collectionId}'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Update Collection
     ///
     /// Update a collection by its unique ID.
     ///
    Future<Response> updateCollection({@required String collectionId, @required String name, @required List read, @required List write, List rules = const []}) {
        final String path = '/database/collections/{collectionId}'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'name': name,
            'read': read,
            'write': write,
            'rules': rules,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.put, path: path, params: params, headers: headers);
    }

     /// Delete Collection
     ///
     /// Delete a collection by its unique ID. Only users with write permissions
     /// have access to delete this resource.
     ///
    Future<Response> deleteCollection({@required String collectionId}) {
        final String path = '/database/collections/{collectionId}'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.delete, path: path, params: params, headers: headers);
    }

     /// List Documents
     ///
     /// Get a list of all the user documents. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project's documents. [Learn more about different API
     /// modes](/docs/admin).
     ///
    Future<Response> listDocuments({@required String collectionId, List filters = const [], int limit = 25, int offset = 0, String orderField = '', OrderType orderType = OrderType.asc, String orderCast = 'string', String search = ''}) {
        final String path = '/database/collections/{collectionId}/documents'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'filters': filters,
            'limit': limit,
            'offset': offset,
            'orderField': orderField,
            'orderType': orderType.name(),
            'orderCast': orderCast,
            'search': search,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Create Document
     ///
     /// Create a new Document. Before using this route, you should create a new
     /// collection resource using either a [server
     /// integration](/docs/server/database#databaseCreateCollection) API or
     /// directly from your database console.
     ///
    Future<Response> createDocument({@required String collectionId, @required Map data, @required List read, @required List write, String parentDocument = '', String parentProperty = '', String parentPropertyType = 'assign'}) {
        final String path = '/database/collections/{collectionId}/documents'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'data': data,
            'read': read,
            'write': write,
            'parentDocument': parentDocument,
            'parentProperty': parentProperty,
            'parentPropertyType': parentPropertyType,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.post, path: path, params: params, headers: headers);
    }

     /// Get Document
     ///
     /// Get a document by its unique ID. This endpoint response returns a JSON
     /// object with the document data.
     ///
    Future<Response> getDocument({@required String collectionId, @required String documentId}) {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.get, path: path, params: params, headers: headers);
    }

     /// Update Document
     ///
     /// Update a document by its unique ID. Using the patch method you can pass
     /// only specific fields that will get updated.
     ///
    Future<Response> updateDocument({@required String collectionId, @required String documentId, @required Map data, @required List read, @required List write}) {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
            'data': data,
            'read': read,
            'write': write,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.patch, path: path, params: params, headers: headers);
    }

     /// Delete Document
     ///
     /// Delete a document by its unique ID. This endpoint deletes only the parent
     /// documents, its attributes and relations to other documents. Child documents
     /// **will not** be deleted.
     ///
    Future<Response> deleteDocument({@required String collectionId, @required String documentId}) {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        return client.call(HttpMethod.delete, path: path, params: params, headers: headers);
    }
}