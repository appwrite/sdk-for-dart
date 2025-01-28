part of '../../models.dart';

/// Build
class Build implements Model {
    /// Build ID.
    final String $id;
    /// The deployment that created this build.
    final String deploymentId;
    /// The build status. There are a few different types and each one means something different. \nFailed - The deployment build has failed. More details can usually be found in buildStderr\nReady - The deployment build was successful and the deployment is ready to be deployed\nProcessing - The deployment is currently waiting to have a build triggered\nBuilding - The deployment is currently being built
    final String status;
    /// The stdout of the build.
    final String stdout;
    /// The stderr of the build.
    final String stderr;
    /// The deployment creation date in ISO 8601 format.
    final String startTime;
    /// The time the build was finished in ISO 8601 format.
    final String endTime;
    /// The build duration in seconds.
    final int duration;
    /// The code size in bytes.
    final int size;

    Build({
        required this.$id,
        required this.deploymentId,
        required this.status,
        required this.stdout,
        required this.stderr,
        required this.startTime,
        required this.endTime,
        required this.duration,
        required this.size,
    });

    factory Build.fromMap(Map<String, dynamic> map) {
        return Build(
            $id: map['\$id'].toString(),
            deploymentId: map['deploymentId'].toString(),
            status: map['status'].toString(),
            stdout: map['stdout'].toString(),
            stderr: map['stderr'].toString(),
            startTime: map['startTime'].toString(),
            endTime: map['endTime'].toString(),
            duration: map['duration'],
            size: map['size'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "deploymentId": deploymentId,
            "status": status,
            "stdout": stdout,
            "stderr": stderr,
            "startTime": startTime,
            "endTime": endTime,
            "duration": duration,
            "size": size,
        };
    }
}