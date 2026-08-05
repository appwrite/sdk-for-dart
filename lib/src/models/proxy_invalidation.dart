part of '../../models.dart';

/// Invalidation
class ProxyInvalidation implements Model {
    /// Domain name.
    final String domain;

    /// Invalidation type. Possible values are &quot;tag&quot;, &quot;path&quot;, or &quot;all&quot;.
    final String type;

    /// Invalidated reference. Depending on type this is a cache tag name, a URL path, or empty when type is all.
    final String reference;

    /// Invalidation status.
    final String status;

    ProxyInvalidation({
        required this.domain,
        required this.type,
        required this.reference,
        required this.status,
    });

    factory ProxyInvalidation.fromMap(Map<String, dynamic> map) {
        return ProxyInvalidation(
            domain: map['domain'].toString(),
            type: map['type'].toString(),
            reference: map['reference'].toString(),
            status: map['status'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "domain": domain,
            "type": type,
            "reference": reference,
            "status": status,
        };
    }
}
