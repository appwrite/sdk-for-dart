part of '../../models.dart';

/// Environment
class Environment implements Model {
  /// Environment ID, as passed in the X-Appwrite-Environment header.
  final String $id;

  /// Environment creation date in ISO 8601 format.
  final String $createdAt;

  /// Environment update date in ISO 8601 format.
  final String $updatedAt;

  /// ID of the project the environment belongs to, as passed in the X-Appwrite-Project header.
  final String projectId;

  /// Environment name.
  final String name;

  Environment({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.projectId,
    required this.name,
  });
  factory Environment.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'projectId': "",
      'name': "",
      ...map,
    };

    return Environment(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      projectId: map['projectId'].toString(),
      name: map['name'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "projectId": projectId,
      "name": name,
    };
  }
}
