part of '../dart_appwrite.dart';

class Organizations extends Service {
    Organizations(super.client);

  /// Delete an organization.
    Future delete({required String organizationId}) async {
        final String apiPath = '/organizations/{organizationId}'.replaceAll('{organizationId}', organizationId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }

  /// Get estimation for deleting an organization.
    Future<models.EstimationDeleteOrganization> estimationDeleteOrganization({required String organizationId}) async {
        final String apiPath = '/organizations/{organizationId}/estimations/delete-organization'.replaceAll('{organizationId}', organizationId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.EstimationDeleteOrganization.fromMap(res.data);

    }
}