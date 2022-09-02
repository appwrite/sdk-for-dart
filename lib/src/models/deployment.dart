part of dart_appwrite.models;

/// Deployment
class Deployment implements Model {
    /// Deployment ID.
    final String $id;
    /// Deployment creation date in Datetime
    final String $createdAt;
    /// Deployment update date in Datetime
    final String $updatedAt;
    /// Resource ID.
    final String resourceId;
    /// Resource type.
    final String resourceType;
    /// The entrypoint file to use to execute the deployment code.
    final String entrypoint;
    /// The code size in bytes.
    final int size;
    /// The current build ID.
    final String buildId;
    /// Whether the deployment should be automatically activated.
    final bool activate;
    /// The deployment status. Possible values are &quot;processing&quot;, &quot;building&quot;, &quot;pending&quot;, &quot;ready&quot;, and &quot;failed&quot;.
    final String status;
    /// The build stdout.
    final String buildStdout;
    /// The build stderr.
    final String buildStderr;

    Deployment({        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.resourceId,
        required this.resourceType,
        required this.entrypoint,
        required this.size,
        required this.buildId,
        required this.activate,
        required this.status,
        required this.buildStdout,
        required this.buildStderr,
    });

    factory Deployment.fromMap(Map<String, dynamic> map) {
        return Deployment(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            resourceId: map['resourceId'].toString(),
            resourceType: map['resourceType'].toString(),
            entrypoint: map['entrypoint'].toString(),
            size: map['size'],
            buildId: map['buildId'].toString(),
            activate: map['activate'],
            status: map['status'].toString(),
            buildStdout: map['buildStdout'].toString(),
            buildStderr: map['buildStderr'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "resourceId": resourceId,
            "resourceType": resourceType,
            "entrypoint": entrypoint,
            "size": size,
            "buildId": buildId,
            "activate": activate,
            "status": status,
            "buildStdout": buildStdout,
            "buildStderr": buildStderr,
        };
    }
}
