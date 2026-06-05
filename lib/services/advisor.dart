part of '../dart_appwrite.dart';

  /// The Advisor service surfaces actionable reports about your project
  /// resources, with CTA descriptors for one-click remediation in the console.
class Advisor extends Service {
    Advisor(super.client);

  /// Get a list of all the project's analyzer reports. You can use the query
  /// params to filter your results.
  /// 
    Future<models.ReportList> listReports({List<String>? queries, bool? total}) async {
        final String apiPath = '/reports';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
if (total != null) 'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ReportList.fromMap(res.data);

    }

  /// Get an analyzer report by its unique ID. The response includes the report's
  /// metadata and the nested insights it produced.
  /// 
    Future<models.Report> getReport({required String reportId}) async {
        final String apiPath = '/reports/{reportId}'.replaceAll('{reportId}', reportId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Report.fromMap(res.data);

    }

  /// Delete an analyzer report by its unique ID. Nested insights and CTA
  /// metadata are removed asynchronously by the deletes worker.
  /// 
    Future deleteReport({required String reportId}) async {
        final String apiPath = '/reports/{reportId}'.replaceAll('{reportId}', reportId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }

  /// List the insights produced under a single analyzer report. You can use the
  /// query params to filter your results further.
  /// 
    Future<models.InsightList> listInsights({required String reportId, List<String>? queries, bool? total}) async {
        final String apiPath = '/reports/{reportId}/insights'.replaceAll('{reportId}', reportId);

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
if (total != null) 'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.InsightList.fromMap(res.data);

    }

  /// Get an insight by its unique ID, scoped to its parent report.
  /// 
    Future<models.Insight> getInsight({required String reportId, required String insightId}) async {
        final String apiPath = '/reports/{reportId}/insights/{insightId}'.replaceAll('{reportId}', reportId).replaceAll('{insightId}', insightId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Insight.fromMap(res.data);

    }
}
