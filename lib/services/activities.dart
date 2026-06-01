part of '../dart_appwrite.dart';

class Activities extends Service {
  Activities(super.client);

  /// List all events for selected filters.
  Future<models.ActivityEventList> listEvents({String? queries}) async {
    final String apiPath = '/activities/events';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ActivityEventList.fromMap(res.data);
  }

  /// Get event by ID.
  ///
  Future<models.ActivityEvent> getEvent({required String eventId}) async {
    final String apiPath =
        '/activities/events/{eventId}'.replaceAll('{eventId}', eventId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ActivityEvent.fromMap(res.data);
  }
}
