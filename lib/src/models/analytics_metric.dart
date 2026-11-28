part of '../../models.dart';

/// AnalyticsMetric
class AnalyticsMetric implements Model {
  /// Dimension value this row covers. Null when no dimension was requested, empty when the dimension could not be derived for those events.
  final String? value;

  /// Start of the time bucket this row covers, in ISO 8601. Null when no interval was requested.
  final String? date;

  /// Unique visitors in the requested range.
  final int visitors;

  /// Unique sessions in the requested range.
  final int sessions;

  /// Total page and screen view events (events named &quot;pageview&quot; or &quot;screen_view&quot;) in the requested range. The flat aggregate and the time series compute it; null on breakdown rows.
  final int? pageviews;

  /// Total events in the requested range.
  final int events;

  /// Unique identified users in the requested range. Anonymous events are not counted. Null on entry and exit page breakdown rows.
  final int? users;

  /// Total sessions with activity in the requested range. Only the flat aggregate computes it; null on breakdown and time-series rows.
  final int? visits;

  /// Share of bounced visits, as a percentage; a visit is a bounce unless it records two or more page or screen views, at least one interaction, or ten seconds or more of activity. An interaction is any event that is neither a view nor automatic measurement such as &quot;app_foregrounded&quot;, &quot;engagement_time&quot; or &quot;scroll_depth&quot;. Only the flat aggregate computes it; null on breakdown and time-series rows.
  final double? bounceRate;

  /// Average session length in seconds, measured first event to last event. Single-event sessions count as 0. Only the flat aggregate computes it; null on breakdown and time-series rows.
  final double? visitDuration;

  /// Average pageviews per session (pageviews divided by visits). Only the flat aggregate computes it; null on breakdown and time-series rows.
  final double? viewsPerVisit;

  /// Average scroll depth across events, as a percentage. Only the flat aggregate computes it; null on breakdown and time-series rows.
  final double? scrollDepth;

  /// Average engaged time per session in seconds, counting only foreground time. Sessions that reported no engagement are excluded. Only the flat aggregate computes it; null on breakdown and time-series rows.
  final double? engagementTime;

  AnalyticsMetric({
    this.value,
    this.date,
    required this.visitors,
    required this.sessions,
    this.pageviews,
    required this.events,
    this.users,
    this.visits,
    this.bounceRate,
    this.visitDuration,
    this.viewsPerVisit,
    this.scrollDepth,
    this.engagementTime,
  });
  factory AnalyticsMetric.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'visitors': 0,
      'sessions': 0,
      'events': 0,
      ...map,
    };

    return AnalyticsMetric(
      value: map['value']?.toString(),
      date: map['date']?.toString(),
      visitors: map['visitors'],
      sessions: map['sessions'],
      pageviews: map['pageviews'],
      events: map['events'],
      users: map['users'],
      visits: map['visits'],
      bounceRate: map['bounceRate']?.toDouble(),
      visitDuration: map['visitDuration']?.toDouble(),
      viewsPerVisit: map['viewsPerVisit']?.toDouble(),
      scrollDepth: map['scrollDepth']?.toDouble(),
      engagementTime: map['engagementTime']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "value": value,
      "date": date,
      "visitors": visitors,
      "sessions": sessions,
      "pageviews": pageviews,
      "events": events,
      "users": users,
      "visits": visits,
      "bounceRate": bounceRate,
      "visitDuration": visitDuration,
      "viewsPerVisit": viewsPerVisit,
      "scrollDepth": scrollDepth,
      "engagementTime": engagementTime,
    };
  }
}
