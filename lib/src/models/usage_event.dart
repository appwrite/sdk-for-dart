part of '../../models.dart';

/// usageEvent
class UsageEvent implements Model {
    /// The metric key.
    final String metric;

    /// The metric value.
    final int value;

    /// The event timestamp.
    final String time;

    /// The API endpoint path.
    final String path;

    /// The HTTP method.
    final String method;

    /// HTTP status code. Stored as string to preserve unset state (empty string = not available).
    final String status;

    /// The resource type.
    final String resourceType;

    /// The resource ID.
    final String resourceId;

    /// Country code in [ISO 3166-1](http://en.wikipedia.org/wiki/ISO_3166-1) two-character format.
    final String countryCode;

    /// The user agent string.
    final String userAgent;

    UsageEvent({
        required this.metric,
        required this.value,
        required this.time,
        required this.path,
        required this.method,
        required this.status,
        required this.resourceType,
        required this.resourceId,
        required this.countryCode,
        required this.userAgent,
    });

    factory UsageEvent.fromMap(Map<String, dynamic> map) {
        return UsageEvent(
            metric: map['metric'].toString(),
            value: map['value'],
            time: map['time'].toString(),
            path: map['path'].toString(),
            method: map['method'].toString(),
            status: map['status'].toString(),
            resourceType: map['resourceType'].toString(),
            resourceId: map['resourceId'].toString(),
            countryCode: map['countryCode'].toString(),
            userAgent: map['userAgent'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "metric": metric,
            "value": value,
            "time": time,
            "path": path,
            "method": method,
            "status": status,
            "resourceType": resourceType,
            "resourceId": resourceId,
            "countryCode": countryCode,
            "userAgent": userAgent,
        };
    }
}
