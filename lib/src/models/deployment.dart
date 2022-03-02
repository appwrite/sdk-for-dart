part of dart_appwrite.models;

/// Deployment
class Deployment {
    /// Deployment ID.
    final String $id;
    /// Resource ID.
    final String resourceId;
    /// Resource type.
    final String resourceType;
    /// The deployment creation date in Unix timestamp.
    final int dateCreated;
    /// The entrypoint file to use to execute the deployment code.
    final String entrypoint;
    /// The code size in bytes.
    final int size;
    /// The current build ID.
    final String buildId;
    /// Whether the deployment should be automatically activated.
    final bool activate;
    /// The deployment status.
    final String status;
    /// The build stdout.
    final String buildStdout;
    /// The build stderr.
    final String buildStderr;

    Deployment({
        required this.$id,
        required this.resourceId,
        required this.resourceType,
        required this.dateCreated,
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
            resourceId: map['resourceId'].toString(),
            resourceType: map['resourceType'].toString(),
            dateCreated: map['dateCreated'],
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
            "resourceId": resourceId,
            "resourceType": resourceType,
            "dateCreated": dateCreated,
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
