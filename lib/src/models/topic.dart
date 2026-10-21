part of '../../models.dart';

/// Topic
class Topic implements Model {
  /// Topic ID.
  final String $id;

  /// Topic creation time in ISO 8601 format.
  final String $createdAt;

  /// Topic update date in ISO 8601 format.
  final String $updatedAt;

  /// The name of the topic.
  final String name;

  /// Optional description for the topic.
  final String description;

  /// Total count of email subscribers subscribed to the topic.
  final int emailTotal;

  /// Total count of SMS subscribers subscribed to the topic.
  final int smsTotal;

  /// Total count of push subscribers subscribed to the topic.
  final int pushTotal;

  /// Subscribe permissions.
  final List<String> subscribe;

  /// MQTT QoS for delivery on this topic. Null lets the subscriber choose their level.
  final int? qos;

  /// Message retention in seconds for offline delivery. Null inherits the lowest expiry of the project&#039;s enabled Appwrite providers, or the 7-day ledger window if none sets one.
  final int? expiry;

  Topic({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.description,
    required this.emailTotal,
    required this.smsTotal,
    required this.pushTotal,
    required this.subscribe,
    this.qos,
    this.expiry,
  });
  factory Topic.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'name': "",
      'description': "",
      'emailTotal': 0,
      'smsTotal': 0,
      'pushTotal': 0,
      'subscribe': ["users"],
      ...map,
    };

    return Topic(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      description: map['description'].toString(),
      emailTotal: map['emailTotal'],
      smsTotal: map['smsTotal'],
      pushTotal: map['pushTotal'],
      subscribe: List.from(map['subscribe'] ?? []),
      qos: map['qos'],
      expiry: map['expiry'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "description": description,
      "emailTotal": emailTotal,
      "smsTotal": smsTotal,
      "pushTotal": pushTotal,
      "subscribe": subscribe,
      "qos": qos,
      "expiry": expiry,
    };
  }
}
