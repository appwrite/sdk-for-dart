part of '../../models.dart';

/// Variable
class Variable<T> implements Model {
  /// Variable ID.
  final String $id;

  /// Variable creation date in ISO 8601 format.
  final String $createdAt;

  /// Variable creation date in ISO 8601 format.
  final String $updatedAt;

  /// Variable key.
  final String key;

  /// Variable value.
  final String value;

  /// Variable secret flag. Secret variables can only be updated or deleted, but never read.
  final bool secret;

  /// Service to which the variable belongs. Possible values are &quot;project&quot;, &quot;function&quot;
  final String resourceType;

  /// ID of resource to which the variable belongs. If resourceType is &quot;project&quot;, it is empty. If resourceType is &quot;function&quot;, it is ID of the function.
  final String resourceId;

  Variable({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.key,
    required this.value,
    required this.secret,
    required this.resourceType,
    required this.resourceId,
  });

  factory Variable.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return Variable(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      key: map['key'].toString(),
      value: map['value'].toString(),
      secret: map['secret'],
      resourceType: map['resourceType'].toString(),
      resourceId: map['resourceId'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "key": key,
      "value": value,
      "secret": secret,
      "resourceType": resourceType,
      "resourceId": resourceId,
    };
  }

  // Public getters for private underscore fields
}
