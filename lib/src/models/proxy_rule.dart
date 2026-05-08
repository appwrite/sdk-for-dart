part of '../../models.dart';

/// Rule
class ProxyRule implements Model {
  /// Rule ID.
  final String $id;

  /// Rule creation date in ISO 8601 format.
  final String $createdAt;

  /// Rule update date in ISO 8601 format.
  final String $updatedAt;

  /// Domain name.
  final String domain;

  /// Action definition for the rule. Possible values are &quot;api&quot;, &quot;deployment&quot;, or &quot;redirect&quot;
  final String type;

  /// Defines how the rule was created. Possible values are &quot;manual&quot; or &quot;deployment&quot;
  final String trigger;

  /// URL to redirect to. Used if type is &quot;redirect&quot;
  final String redirectUrl;

  /// Status code to apply during redirect. Used if type is &quot;redirect&quot;
  final int redirectStatusCode;

  /// ID of deployment. Used if type is &quot;deployment&quot;
  final String deploymentId;

  /// Type of deployment. Possible values are &quot;function&quot;, &quot;site&quot;. Used if rule&#039;s type is &quot;deployment&quot;.
  final enums.ProxyRuleDeploymentResourceType? deploymentResourceType;

  /// ID of deployment&#039;s resource (site or function ID). Used if type is &quot;deployment&quot;
  final String deploymentResourceId;

  /// Name of Git branch that updates rule. Used if type is &quot;deployment&quot;
  final String deploymentVcsProviderBranch;

  /// Domain verification status. Possible values are &quot;unverified&quot;, &quot;verifying&quot;, &quot;verified&quot;
  final enums.ProxyRuleStatus status;

  /// Logs from rule verification or certificate generation. Certificate generation logs are prioritized if both are available.
  final String logs;

  /// Certificate auto-renewal date in ISO 8601 format.
  final String renewAt;

  ProxyRule({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.domain,
    required this.type,
    required this.trigger,
    required this.redirectUrl,
    required this.redirectStatusCode,
    required this.deploymentId,
    this.deploymentResourceType,
    required this.deploymentResourceId,
    required this.deploymentVcsProviderBranch,
    required this.status,
    required this.logs,
    required this.renewAt,
  });

  factory ProxyRule.fromMap(Map<String, dynamic> map) {
    return ProxyRule(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      domain: map['domain'].toString(),
      type: map['type'].toString(),
      trigger: map['trigger'].toString(),
      redirectUrl: map['redirectUrl'].toString(),
      redirectStatusCode: map['redirectStatusCode'],
      deploymentId: map['deploymentId'].toString(),
      deploymentResourceType: map['deploymentResourceType'] != null
          ? enums.ProxyRuleDeploymentResourceType.values
              .firstWhere((e) => e.value == map['deploymentResourceType'])
          : null,
      deploymentResourceId: map['deploymentResourceId'].toString(),
      deploymentVcsProviderBranch:
          map['deploymentVcsProviderBranch'].toString(),
      status: enums.ProxyRuleStatus.values
          .firstWhere((e) => e.value == map['status']),
      logs: map['logs'].toString(),
      renewAt: map['renewAt'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "domain": domain,
      "type": type,
      "trigger": trigger,
      "redirectUrl": redirectUrl,
      "redirectStatusCode": redirectStatusCode,
      "deploymentId": deploymentId,
      "deploymentResourceType": deploymentResourceType?.value,
      "deploymentResourceId": deploymentResourceId,
      "deploymentVcsProviderBranch": deploymentVcsProviderBranch,
      "status": status.value,
      "logs": logs,
      "renewAt": renewAt,
    };
  }
}
