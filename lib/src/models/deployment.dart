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
    final int sourceSize;

    /// The build output size in bytes.
    final int buildSize;

    /// The total size in bytes (source and build output).
    final int totalSize;

    /// The current build ID.
    final String buildId;

    /// Whether the deployment should be automatically activated.
    final bool activate;

    /// Screenshot with light theme preference file ID.
    final String screenshotLight;

    /// Screenshot with dark theme preference file ID.
    final String screenshotDark;

    /// The deployment status. Possible values are &quot;waiting&quot;, &quot;processing&quot;, &quot;building&quot;, &quot;ready&quot;, and &quot;failed&quot;.
    final String status;

    /// The build logs.
    final String buildLogs;

    /// The current build time in seconds.
    final int buildDuration;

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
        required this.sourceSize,
        required this.buildSize,
        required this.totalSize,
        required this.buildId,
        required this.activate,
        required this.screenshotLight,
        required this.screenshotDark,
        required this.status,
        required this.buildLogs,
        required this.buildDuration,
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
            $id: 
map['\$id'].toString(),
            $createdAt: 
map['\$createdAt'].toString(),
            $updatedAt: 
map['\$updatedAt'].toString(),
            type: 
map['type'].toString(),
            resourceId: 
map['resourceId'].toString(),
            resourceType: 
map['resourceType'].toString(),
            entrypoint: 
map['entrypoint'].toString(),
            sourceSize: 
map['sourceSize'],
            buildSize: 
map['buildSize'],
            totalSize: 
map['totalSize'],
            buildId: 
map['buildId'].toString(),
            activate: 
map['activate'],
            screenshotLight: 
map['screenshotLight'].toString(),
            screenshotDark: 
map['screenshotDark'].toString(),
            status: 
map['status'].toString(),
            buildLogs: 
map['buildLogs'].toString(),
            buildDuration: 
map['buildDuration'],
            providerRepositoryName: 
map['providerRepositoryName'].toString(),
            providerRepositoryOwner: 
map['providerRepositoryOwner'].toString(),
            providerRepositoryUrl: 
map['providerRepositoryUrl'].toString(),
            providerBranch: 
map['providerBranch'].toString(),
            providerCommitHash: 
map['providerCommitHash'].toString(),
            providerCommitAuthorUrl: 
map['providerCommitAuthorUrl'].toString(),
            providerCommitAuthor: 
map['providerCommitAuthor'].toString(),
            providerCommitMessage: 
map['providerCommitMessage'].toString(),
            providerCommitUrl: 
map['providerCommitUrl'].toString(),
            providerBranchUrl: 
map['providerBranchUrl'].toString(),
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
            "sourceSize": sourceSize,
            "buildSize": buildSize,
            "totalSize": totalSize,
            "buildId": buildId,
            "activate": activate,
            "screenshotLight": screenshotLight,
            "screenshotDark": screenshotDark,
            "status": status,
            "buildLogs": buildLogs,
            "buildDuration": buildDuration,
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
