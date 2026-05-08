part of '../../enums.dart';

enum ProxyRuleDeploymentResourceType {
    function(value: 'function'),
    site(value: 'site');

    const ProxyRuleDeploymentResourceType({
        required this.value
    });

    final String value;

    String toJson() => value;
}