part of '../../models.dart';

/// Program
class Program implements Model {
  /// Program ID
  final String $id;

  /// Program title
  final String title;

  /// Program description
  final String description;

  /// Program tag for highlighting on console
  final String tag;

  /// Program icon for highlighting on console
  final String icon;

  /// URL for more information on this program
  final String url;

  /// Whether this program is active
  final bool active;

  /// Whether this program is external
  final bool xexternal;

  /// Billing plan ID that this is program is associated with.
  final String billingPlanId;

  Program({
    required this.$id,
    required this.title,
    required this.description,
    required this.tag,
    required this.icon,
    required this.url,
    required this.active,
    required this.xexternal,
    required this.billingPlanId,
  });

  factory Program.fromMap(Map<String, dynamic> map) {
    return Program(
      $id: map['\$id'].toString(),
      title: map['title'].toString(),
      description: map['description'].toString(),
      tag: map['tag'].toString(),
      icon: map['icon'].toString(),
      url: map['url'].toString(),
      active: map['active'],
      xexternal: map['external'],
      billingPlanId: map['billingPlanId'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "title": title,
      "description": description,
      "tag": tag,
      "icon": icon,
      "url": url,
      "active": active,
      "external": xexternal,
      "billingPlanId": billingPlanId,
    };
  }
}
