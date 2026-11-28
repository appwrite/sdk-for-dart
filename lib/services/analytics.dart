part of '../dart_appwrite.dart';

class Analytics extends Service {
  Analytics(super.client);

  /// List analytics properties for the current project.
  Future<models.AnalyticsPropertyList> listProperties({
    List<String>? queries,
    String? search,
    bool? total,
  }) async {
    final String apiPath = '/analytics/properties';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsPropertyList.fromMap(res.data);
  }

  /// Create a new analytics property to track a website or application.
  Future<models.AnalyticsProperty> createProperty({
    required String propertyId,
    required String name,
    String? domain,
    bool? enabled,
    List<String>? allowedOrigins,
    bool? identifyUsers,
    enums.AnalyticsPropertyType? type,
  }) async {
    final String apiPath = '/analytics/properties';

    final Map<String, dynamic> apiParams = {
      'propertyId': propertyId,
      'name': name,
      if (domain != null) 'domain': domain,
      if (enabled != null) 'enabled': enabled,
      if (allowedOrigins != null) 'allowedOrigins': allowedOrigins,
      if (identifyUsers != null) 'identifyUsers': identifyUsers,
      if (type != null) 'type': type?.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsProperty.fromMap(res.data);
  }

  /// Get an analytics property by ID.
  Future<models.AnalyticsProperty> getProperty({
    required String propertyId,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    final String apiPath = '/analytics/properties/{propertyId}'.replaceAll(
      '{propertyId}',
      _encodePath(propertyId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsProperty.fromMap(res.data);
  }

  /// Update an analytics property. Only the attributes you pass are changed;
  /// omitted attributes keep their current value.
  Future<models.AnalyticsProperty> updateProperty({
    required String propertyId,
    String? name,
    String? domain,
    bool? enabled,
    List<String>? allowedOrigins,
    bool? identifyUsers,
    enums.AnalyticsPropertyType? type,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    final String apiPath = '/analytics/properties/{propertyId}'.replaceAll(
      '{propertyId}',
      _encodePath(propertyId),
    );

    final Map<String, dynamic> apiParams = {
      if (name != null) 'name': name,
      if (domain != null) 'domain': domain,
      if (enabled != null) 'enabled': enabled,
      if (allowedOrigins != null) 'allowedOrigins': allowedOrigins,
      if (identifyUsers != null) 'identifyUsers': identifyUsers,
      if (type != null) 'type': type?.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsProperty.fromMap(res.data);
  }

  /// Delete an analytics property along with every event and session collected
  /// for it. This cannot be undone.
  Future deleteProperty({
    required String propertyId,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    final String apiPath = '/analytics/properties/{propertyId}'.replaceAll(
      '{propertyId}',
      _encodePath(propertyId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// List the annotations of an analytics property. Filter on `date` to fetch
  /// the annotations inside a chart's time range.
  Future<models.AnalyticsAnnotationList> listAnnotations({
    required String propertyId,
    List<String>? queries,
    bool? total,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    final String apiPath =
        '/analytics/properties/{propertyId}/annotations'.replaceAll(
      '{propertyId}',
      _encodePath(propertyId),
    );

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsAnnotationList.fromMap(res.data);
  }

  /// Create an annotation that marks a point in time on an analytics property's
  /// charts.
  Future<models.AnalyticsAnnotation> createAnnotation({
    required String propertyId,
    required String annotationId,
    required String date,
    required String content,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    final String apiPath =
        '/analytics/properties/{propertyId}/annotations'.replaceAll(
      '{propertyId}',
      _encodePath(propertyId),
    );

    final Map<String, dynamic> apiParams = {
      'annotationId': annotationId,
      'date': date,
      'content': content,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsAnnotation.fromMap(res.data);
  }

  /// Get an analytics annotation by ID.
  Future<models.AnalyticsAnnotation> getAnnotation({
    required String propertyId,
    required String annotationId,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    if (annotationId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "annotationId"',
      );
    }

    final String apiPath =
        '/analytics/properties/{propertyId}/annotations/{annotationId}'
            .replaceAll(
              '{propertyId}',
              _encodePath(propertyId),
            )
            .replaceAll(
              '{annotationId}',
              _encodePath(annotationId),
            );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsAnnotation.fromMap(res.data);
  }

  /// Update an analytics annotation. Only the attributes you pass are changed;
  /// omitted attributes keep their current value.
  Future<models.AnalyticsAnnotation> updateAnnotation({
    required String propertyId,
    required String annotationId,
    String? date,
    String? content,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    if (annotationId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "annotationId"',
      );
    }

    final String apiPath =
        '/analytics/properties/{propertyId}/annotations/{annotationId}'
            .replaceAll(
              '{propertyId}',
              _encodePath(propertyId),
            )
            .replaceAll(
              '{annotationId}',
              _encodePath(annotationId),
            );

    final Map<String, dynamic> apiParams = {
      if (date != null) 'date': date,
      if (content != null) 'content': content,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsAnnotation.fromMap(res.data);
  }

  /// Delete an analytics annotation.
  Future deleteAnnotation({
    required String propertyId,
    required String annotationId,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    if (annotationId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "annotationId"',
      );
    }

    final String apiPath =
        '/analytics/properties/{propertyId}/annotations/{annotationId}'
            .replaceAll(
              '{propertyId}',
              _encodePath(propertyId),
            )
            .replaceAll(
              '{annotationId}',
              _encodePath(annotationId),
            );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Send a tracking event from a browser, native app, or server-side SDK.
  Future createEvent({
    required String propertyId,
    required String name,
    required String url,
    String? domain,
    String? referrer,
    int? screenWidth,
    String? sessionHash,
    int? scrollDepth,
    int? engagementTime,
    List<String>? props,
    String? userId,
    String? ip,
    String? userAgent,
    bool? interactive,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    final String apiPath =
        '/analytics/properties/{propertyId}/events'.replaceAll(
      '{propertyId}',
      _encodePath(propertyId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'url': url,
      if (domain != null) 'domain': domain,
      if (referrer != null) 'referrer': referrer,
      if (screenWidth != null) 'screenWidth': screenWidth,
      if (sessionHash != null) 'sessionHash': sessionHash,
      if (scrollDepth != null) 'scrollDepth': scrollDepth,
      if (engagementTime != null) 'engagementTime': engagementTime,
      if (props != null) 'props': props,
      if (userId != null) 'userId': userId,
      if (ip != null) 'ip': ip,
      if (userAgent != null) 'userAgent': userAgent,
      if (interactive != null) 'interactive': interactive,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Read analytics metrics (visitors, sessions, pageviews, events, bounceRate,
  /// …) for a property over a date range.
  ///
  /// **Three response shapes**, chosen by `dimensions[]` and `interval`:
  /// - Neither: one row aggregating the whole window, with `value` and `date`
  /// null. Only this shape carries `visits`, `bounceRate`, `visitDuration`,
  /// `viewsPerVisit`, `scrollDepth` and `engagementTime`.
  /// - `dimensions[]`: one row per dimension value, ranked by visitors, with
  /// `value` set and `date` null.
  /// - `interval`: one row per time bucket in chronological order, with `date`
  /// set and `value` null.
  ///
  /// `pageviews` is carried by the flat aggregate and by `interval`, but not by
  /// a breakdown.
  ///
  /// `userId` and `users` cover identified traffic only: events sent with an API
  /// key's `userId`, or from a signed-in session on a property with
  /// `identifyUsers` on. A `userId` breakdown leaves out anonymous events;
  /// returned values are the project's user IDs.
  ///
  /// Custom event props: `dimensions[]=props` ranks the prop keys seen in the
  /// window, and adding `propKey` ranks the values of that one key. `queries[]`
  /// filters on a prop's value with the `props.<key>` attribute, e.g.
  /// `equal("props.plan", ["pro"])`.
  ///
  /// Combining `dimensions[]` with `interval` is not supported yet. `queries[]`
  /// filters the underlying events using standard Utopia query syntax.
  Future<models.AnalyticsMetricList> listMetrics({
    required String propertyId,
    List<String>? queries,
    enums.AnalyticsInterval? interval,
    List<enums.AnalyticsDimension>? dimensions,
    String? propKey,
    String? dateRange,
    String? startAt,
    String? endAt,
    int? limit,
    bool? total,
  }) async {
    if (propertyId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "propertyId"',
      );
    }

    final String apiPath =
        '/analytics/properties/{propertyId}/metrics'.replaceAll(
      '{propertyId}',
      _encodePath(propertyId),
    );

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (interval != null) 'interval': interval?.value,
      if (dimensions != null)
        'dimensions': dimensions?.map((e) => e.value).toList(),
      if (propKey != null) 'propKey': propKey,
      if (dateRange != null) 'dateRange': dateRange,
      if (startAt != null) 'startAt': startAt,
      if (endAt != null) 'endAt': endAt,
      if (limit != null) 'limit': limit,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.AnalyticsMetricList.fromMap(res.data);
  }
}
