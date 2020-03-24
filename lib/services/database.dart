import "package:appwrite/service.dart";
import "package:appwrite/client.dart";
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../enums.dart';

class Database extends Service {
     
     Database(Client client): super(client);

     /// Get a list of all the user documents. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project documents. [Learn more about different API
     /// modes](/docs/admin).
    Future<Response> listDocuments({@required String collectionId, List<String> filters = const [],
      int offset = null, int limit = 50, String orderField = '\$id', OrderType orderType = OrderType.asc,
      String orderCast = 'string', String search = null, int first = null, int last = null}) async {
       String path = '/database/collections/{collectionId}/documents'.replaceAll(RegExp('{collectionId}'), collectionId);

       Map<String, dynamic> params = {
         'filters': filters,
         'offset': offset,
         'limit': limit,
         'order-field': orderField,
         'order-type': orderType.name(),
         'order-cast': orderCast,
         'search': search,
         'first': first,
         'last': last,
       };

       return await this.client.call(HttpMethod.get, path: path, params: params);
    }
     /// Create a new Document.
    Future<Response> createDocument({@required String collectionId, @required data,
      @required List<String> read, @required List<String> write, String parentDocument = null,
      String parentProperty = null, String parentPropertyType = 'assign'}) async {
       String path = '/database/collections/{collectionId}/documents'.replaceAll(RegExp('{collectionId}'), collectionId);

       Map<String, dynamic> params = {
         'data': data,
         'read': read,
         'write': write,
         'parentDocument': parentDocument,
         'parentProperty': parentProperty,
         'parentPropertyType': parentPropertyType,
       };

       return await this.client.call(HttpMethod.post, path: path, params: params);
    }
     /// Get document by its unique ID. This endpoint response returns a JSON object
     /// with the document data.
    Future<Response> getDocument({@required String collectionId, @required String documentId}) async {
       String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

       Map<String, dynamic> params = {
       };

       return await this.client.call(HttpMethod.get, path: path, params: params);
    }
    Future<Response> updateDocument({@required String collectionId, @required String documentId, @required data,
      @required List<String> read, @required List<String> write}) async {
       String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

       Map<String, dynamic> params = {
         'data': data,
         'read': read,
         'write': write,
       };

       return await this.client.call(HttpMethod.patch, path: path, params: params);
    }
     /// Delete document by its unique ID. This endpoint deletes only the parent
     /// documents, his attributes and relations to other documents. Child documents
     /// **will not** be deleted.
    Future<Response> deleteDocument({@required String collectionId, @required String documentId}) async {
       String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

       Map<String, dynamic> params = {
       };

       return await this.client.call(HttpMethod.delete, path: path, params: params);
    }
}