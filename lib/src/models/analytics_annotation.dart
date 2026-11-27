part of '../../models.dart';

/// AnalyticsAnnotation
class AnalyticsAnnotation implements Model {
  /// Annotation ID.
  final String $id;

  /// Annotation creation date in ISO 8601 format.
  final String $createdAt;

  /// Annotation update date in ISO 8601 format.
  final String $updatedAt;

  /// ID of the analytics property the annotation belongs to.
  final String propertyId;

  /// Point in time the annotation marks, in ISO 8601 format.
  final String date;

  /// Annotation text.
  final String content;

  /// ID of the user who created the annotation. Empty when it was created with an API key.
  final String userId;

  AnalyticsAnnotation({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.propertyId,
    required this.date,
    required this.content,
    required this.userId,
  });
  factory AnalyticsAnnotation.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'propertyId': "",
      'date': "",
      'content': "",
      'userId': "",
      ...map,
    };

    return AnalyticsAnnotation(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      propertyId: map['propertyId'].toString(),
      date: map['date'].toString(),
      content: map['content'].toString(),
      userId: map['userId'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "propertyId": propertyId,
      "date": date,
      "content": content,
      "userId": userId,
    };
  }
}
