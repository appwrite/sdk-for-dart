import "package:appwrite/service.dart";
import "package:appwrite/client.dart";
import 'package:dio/dio.dart';

import '../enums.dart';

class Storage extends Service {
     
     Storage(Client client): super(client);

     /// Get a list of all the user files. You can use the query params to filter
     /// your results. On admin mode, this endpoint will return a list of all of the
     /// project files. [Learn more about different API modes](/docs/admin).
    Future<Response> listFiles({search = null, limit = 25, offset = null, OrderType orderType = OrderType.asc}) async {
       String path = '/storage/files';

       Map<String, dynamic> params = {
         'search': search,
         'limit': limit,
         'offset': offset,
         'orderType': orderType.name(),
       };

       return await this.client.call(HttpMethod.get, path: path, params: params);
    }
     /// Create a new file. The user who creates the file will automatically be
     /// assigned to read and write access unless he has passed custom values for
     /// read and write arguments.
    Future<Response> createFile({file, read, write}) async {
       String path = '/storage/files';

       Map<String, dynamic> params = {
         'file': file,
         'read': read,
         'write': write,
       };

       return await this.client.call(HttpMethod.post, path: path, params: params);
    }
     /// Get file by its unique ID. This endpoint response returns a JSON object
     /// with the file metadata.
    Future<Response> getFile({fileId}) async {
       String path = '/storage/files/{fileId}'.replaceAll(RegExp('{fileId}'), fileId);

       Map<String, dynamic> params = {
       };

       return await this.client.call(HttpMethod.get, path: path, params: params);
    }
     /// Update file by its unique ID. Only users with write permissions have access
     /// to update this resource.
    Future<Response> updateFile({fileId, read, write}) async {
       String path = '/storage/files/{fileId}'.replaceAll(RegExp('{fileId}'), fileId);

       Map<String, dynamic> params = {
         'read': read,
         'write': write,
       };

       return await this.client.call(HttpMethod.put, path: path, params: params);
    }
     /// Delete a file by its unique ID. Only users with write permissions have
     /// access to delete this resource.
    Future<Response> deleteFile({fileId}) async {
       String path = '/storage/files/{fileId}'.replaceAll(RegExp('{fileId}'), fileId);

       Map<String, dynamic> params = {
       };

       return await this.client.call(HttpMethod.delete, path: path, params: params);
    }
     /// Get file content by its unique ID. The endpoint response return with a
     /// 'Content-Disposition: attachment' header that tells the browser to start
     /// downloading the file to user downloads directory.
    Future<Response> getFileDownload({fileId}) async {
       String path = '/storage/files/{fileId}/download'.replaceAll(RegExp('{fileId}'), fileId);

       Map<String, dynamic> params = {
       };

       return await this.client.call(HttpMethod.get, path: path, params: params);
    }
     /// Get a file preview image. Currently, this method supports preview for image
     /// files (jpg, png, and gif), other supported formats, like pdf, docs, slides,
     /// and spreadsheets, will return the file icon image. You can also pass query
     /// string arguments for cutting and resizing your preview image.
    Future<Response> getFilePreview({fileId, width = null, height = null, quality = 100, background = null, output = null}) async {
       String path = '/storage/files/{fileId}/preview'.replaceAll(RegExp('{fileId}'), fileId);

       Map<String, dynamic> params = {
         'width': width,
         'height': height,
         'quality': quality,
         'background': background,
         'output': output,
       };

       return await this.client.call(HttpMethod.get, path: path, params: params);
    }
     /// Get file content by its unique ID. This endpoint is similar to the download
     /// method but returns with no  'Content-Disposition: attachment' header.
    Future<Response> getFileView({fileId, as = null}) async {
       String path = '/storage/files/{fileId}/view'.replaceAll(RegExp('{fileId}'), fileId);

       Map<String, dynamic> params = {
         'as': as,
       };

       return await this.client.call(HttpMethod.get, path: path, params: params);
    }
}