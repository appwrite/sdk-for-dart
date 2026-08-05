part of '../dart_appwrite.dart';

class Embeddings extends Service {
  Embeddings(super.client);

  /// Generate vector embeddings for an array of text using the selected
  /// embedding model. Use the returned vectors to power semantic search and
  /// similarity queries against your vector collections.
  ///
  Future<models.EmbeddingList> createTextEmbeddings(
      {required List<String> texts, enums.EmbeddingModel? model}) async {
    final String apiPath = '/embeddings/text';

    final Map<String, dynamic> apiParams = {
      'texts': texts,
      if (model != null) 'model': model.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.EmbeddingList.fromMap(res.data);
  }
}
