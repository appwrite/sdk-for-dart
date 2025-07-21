part of '../../models.dart';

/// Function
class Func implements Model {
    /// Function ID.
    final String $id;

    /// Function creation date in ISO 8601 format.
    final String $createdAt;

    /// Function update date in ISO 8601 format.
    final String $updatedAt;

    /// Execution permissions.
    final List<String> execute;

    /// Function name.
    final String name;

    /// Function enabled.
    final bool enabled;

    /// Is the function deployed with the latest configuration? This is set to false if you&#039;ve changed an environment variables, entrypoint, commands, or other settings that needs redeploy to be applied. When the value is false, redeploy the function to update it with the latest configuration.
    final bool live;

    /// When disabled, executions will exclude logs and errors, and will be slightly faster.
    final bool logging;

    /// Function execution and build runtime.
    final String runtime;

    /// Function&#039;s active deployment ID.
    final String deploymentId;

    /// Active deployment creation date in ISO 8601 format.
    final String deploymentCreatedAt;

    /// Function&#039;s latest deployment ID.
    final String latestDeploymentId;

    /// Latest deployment creation date in ISO 8601 format.
    final String latestDeploymentCreatedAt;

    /// Status of latest deployment. Possible values are &quot;waiting&quot;, &quot;processing&quot;, &quot;building&quot;, &quot;ready&quot;, and &quot;failed&quot;.
    final String latestDeploymentStatus;

    /// Allowed permission scopes.
    final List<String> scopes;

    /// Function variables.
    final List<Variable> vars;

    /// Function trigger events.
    final List<String> events;

    /// Function execution schedule in CRON format.
    final String schedule;

    /// Function execution timeout in seconds.
    final int timeout;

    /// The entrypoint file used to execute the deployment.
    final String entrypoint;

    /// The build command used to build the deployment.
    final String commands;

    /// Version of Open Runtimes used for the function.
    final String version;

    /// Function VCS (Version Control System) installation id.
    final String installationId;

    /// VCS (Version Control System) Repository ID
    final String providerRepositoryId;

    /// VCS (Version Control System) branch name
    final String providerBranch;

    /// Path to function in VCS (Version Control System) repository
    final String providerRootDirectory;

    /// Is VCS (Version Control System) connection is in silent mode? When in silence mode, no comments will be posted on the repository pull or merge requests
    final bool providerSilentMode;

    /// Machine specification for builds and executions.
    final String specification;

    Func({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.execute,
        required this.name,
        required this.enabled,
        required this.live,
        required this.logging,
        required this.runtime,
        required this.deploymentId,
        required this.deploymentCreatedAt,
        required this.latestDeploymentId,
        required this.latestDeploymentCreatedAt,
        required this.latestDeploymentStatus,
        required this.scopes,
        required this.vars,
        required this.events,
        required this.schedule,
        required this.timeout,
        required this.entrypoint,
        required this.commands,
        required this.version,
        required this.installationId,
        required this.providerRepositoryId,
        required this.providerBranch,
        required this.providerRootDirectory,
        required this.providerSilentMode,
        required this.specification,
    });

    factory Func.fromMap(Map<String, dynamic> map) {
        return Func(
            $id: 
map['\$id'].toString(),
            $createdAt: 
map['\$createdAt'].toString(),
            $updatedAt: 
map['\$updatedAt'].toString(),
            execute: 
List.from(map['execute'] ?? []),
            name: 
map['name'].toString(),
            enabled: 
map['enabled'],
            live: 
map['live'],
            logging: 
map['logging'],
            runtime: 
map['runtime'].toString(),
            deploymentId: 
map['deploymentId'].toString(),
            deploymentCreatedAt: 
map['deploymentCreatedAt'].toString(),
            latestDeploymentId: 
map['latestDeploymentId'].toString(),
            latestDeploymentCreatedAt: 
map['latestDeploymentCreatedAt'].toString(),
            latestDeploymentStatus: 
map['latestDeploymentStatus'].toString(),
            scopes: 
List.from(map['scopes'] ?? []),
            vars: 
List<Variable>.from(map['vars'].map((p) => Variable.fromMap(p))),
            events: 
List.from(map['events'] ?? []),
            schedule: 
map['schedule'].toString(),
            timeout: 
map['timeout'],
            entrypoint: 
map['entrypoint'].toString(),
            commands: 
map['commands'].toString(),
            version: 
map['version'].toString(),
            installationId: 
map['installationId'].toString(),
            providerRepositoryId: 
map['providerRepositoryId'].toString(),
            providerBranch: 
map['providerBranch'].toString(),
            providerRootDirectory: 
map['providerRootDirectory'].toString(),
            providerSilentMode: 
map['providerSilentMode'],
            specification: 
map['specification'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "execute": execute,
            "name": name,
            "enabled": enabled,
            "live": live,
            "logging": logging,
            "runtime": runtime,
            "deploymentId": deploymentId,
            "deploymentCreatedAt": deploymentCreatedAt,
            "latestDeploymentId": latestDeploymentId,
            "latestDeploymentCreatedAt": latestDeploymentCreatedAt,
            "latestDeploymentStatus": latestDeploymentStatus,
            "scopes": scopes,
            "vars": vars.map((p) => p.toMap()).toList(),
            "events": events,
            "schedule": schedule,
            "timeout": timeout,
            "entrypoint": entrypoint,
            "commands": commands,
            "version": version,
            "installationId": installationId,
            "providerRepositoryId": providerRepositoryId,
            "providerBranch": providerBranch,
            "providerRootDirectory": providerRootDirectory,
            "providerSilentMode": providerSilentMode,
            "specification": specification,
        };
    }

}
