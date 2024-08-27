part of '../../models.dart';

/// Deployment
class Deployment implements Model {
  /// Deployment ID.
  final String $id;

  /// Deployment creation date in ISO 8601 format.
  final String $createdAt;

  /// Deployment update date in ISO 8601 format.
  final String $updatedAt;

  /// Type of deployment.
  final String type;

  /// Resource ID.
  final String resourceId;

  /// Resource type.
  final String resourceType;

  /// The entrypoint file to use to execute the deployment code.
  final String entrypoint;

  /// The code size in bytes.
  final int size;

  /// The build output size in bytes.
  final int buildSize;

  /// The current build ID.
  final String buildId;

  /// Whether the deployment should be automatically activated.
  final bool activate;

  /// The deployment status. Possible values are &quot;processing&quot;, &quot;building&quot;, &quot;waiting&quot;, &quot;ready&quot;, and &quot;failed&quot;.
  final String status;

  /// The build logs.
  final String buildLogs;

  /// The current build time in seconds.
  final int buildTime;

  /// The name of the vcs provider repository
  final String providerRepositoryName;

  /// The name of the vcs provider repository owner
  final String providerRepositoryOwner;

  /// The url of the vcs provider repository
  final String providerRepositoryUrl;

  /// The branch of the vcs repository
  final String providerBranch;

  /// The commit hash of the vcs commit
  final String providerCommitHash;

  /// The url of vcs commit author
  final String providerCommitAuthorUrl;

  /// The name of vcs commit author
  final String providerCommitAuthor;

  /// The commit message
  final String providerCommitMessage;

  /// The url of the vcs commit
  final String providerCommitUrl;

  /// The branch of the vcs repository
  final String providerBranchUrl;

  Deployment({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.type,
    required this.resourceId,
    required this.resourceType,
    required this.entrypoint,
    required this.size,
    required this.buildSize,
    required this.buildId,
    required this.activate,
    required this.status,
    required this.buildLogs,
    required this.buildTime,
    required this.providerRepositoryName,
    required this.providerRepositoryOwner,
    required this.providerRepositoryUrl,
    required this.providerBranch,
    required this.providerCommitHash,
    required this.providerCommitAuthorUrl,
    required this.providerCommitAuthor,
    required this.providerCommitMessage,
    required this.providerCommitUrl,
    required this.providerBranchUrl,
  });

  factory Deployment.fromMap(Map<String, dynamic> map) {
    return Deployment(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      type: map['type'].toString(),
      resourceId: map['resourceId'].toString(),
      resourceType: map['resourceType'].toString(),
      entrypoint: map['entrypoint'].toString(),
      size: map['size'],
      buildSize: map['buildSize'],
      buildId: map['buildId'].toString(),
      activate: map['activate'],
      status: map['status'].toString(),
      buildLogs: map['buildLogs'].toString(),
      buildTime: map['buildTime'],
      providerRepositoryName: map['providerRepositoryName'].toString(),
      providerRepositoryOwner: map['providerRepositoryOwner'].toString(),
      providerRepositoryUrl: map['providerRepositoryUrl'].toString(),
      providerBranch: map['providerBranch'].toString(),
      providerCommitHash: map['providerCommitHash'].toString(),
      providerCommitAuthorUrl: map['providerCommitAuthorUrl'].toString(),
      providerCommitAuthor: map['providerCommitAuthor'].toString(),
      providerCommitMessage: map['providerCommitMessage'].toString(),
      providerCommitUrl: map['providerCommitUrl'].toString(),
      providerBranchUrl: map['providerBranchUrl'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "type": type,
      "resourceId": resourceId,
      "resourceType": resourceType,
      "entrypoint": entrypoint,
      "size": size,
      "buildSize": buildSize,
      "buildId": buildId,
      "activate": activate,
      "status": status,
      "buildLogs": buildLogs,
      "buildTime": buildTime,
      "providerRepositoryName": providerRepositoryName,
      "providerRepositoryOwner": providerRepositoryOwner,
      "providerRepositoryUrl": providerRepositoryUrl,
      "providerBranch": providerBranch,
      "providerCommitHash": providerCommitHash,
      "providerCommitAuthorUrl": providerCommitAuthorUrl,
      "providerCommitAuthor": providerCommitAuthor,
      "providerCommitMessage": providerCommitMessage,
      "providerCommitUrl": providerCommitUrl,
      "providerBranchUrl": providerBranchUrl,
    };
  }
}
