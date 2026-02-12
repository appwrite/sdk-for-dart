part of '../dart_appwrite.dart';

  /// The GraphQL API allows you to query and mutate your Appwrite server using
  /// GraphQL.
class Graphql extends Service {
    Graphql(super.client);

  /// Execute a GraphQL mutation.
    Future query({required Map query}) async {
        final String apiPath = '/graphql';

    final Map<String, dynamic> apiParams = {
      
      'query': query,

    };

    final Map<String, String> apiHeaders = {
      'x-sdk-graphql': 'true',
'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }

  /// Execute a GraphQL mutation.
    Future mutation({required Map query}) async {
        final String apiPath = '/graphql/mutation';

    final Map<String, dynamic> apiParams = {
      
      'query': query,

    };

    final Map<String, String> apiHeaders = {
      'x-sdk-graphql': 'true',
'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }
}