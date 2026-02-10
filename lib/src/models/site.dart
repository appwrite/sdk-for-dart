part of '../../models.dart';

/// Site
class Site implements Model {
  /// Site ID.
  final String $id;

  /// Site creation date in ISO 8601 format.
  final String $createdAt;

  /// Site update date in ISO 8601 format.
  final String $updatedAt;

  /// Site name.
  final String name;

  /// Site enabled.
  final bool enabled;

  /// Is the site deployed with the latest configuration? This is set to false if you&#039;ve changed an environment variables, entrypoint, commands, or other settings that needs redeploy to be applied. When the value is false, redeploy the site to update it with the latest configuration.
  final bool live;

  /// When disabled, request logs will exclude logs and errors, and site responses will be slightly faster.
  final bool logging;

  /// Site framework.
  final String framework;

  /// Site&#039;s active deployment ID.
  final String deploymentId;

  /// Active deployment creation date in ISO 8601 format.
  final String deploymentCreatedAt;

  /// Screenshot of active deployment with light theme preference file ID.
  final String deploymentScreenshotLight;

  /// Screenshot of active deployment with dark theme preference file ID.
  final String deploymentScreenshotDark;

  /// Site&#039;s latest deployment ID.
  final String latestDeploymentId;

  /// Latest deployment creation date in ISO 8601 format.
  final String latestDeploymentCreatedAt;

  /// Status of latest deployment. Possible values are &quot;waiting&quot;, &quot;processing&quot;, &quot;building&quot;, &quot;ready&quot;, and &quot;failed&quot;.
  final String latestDeploymentStatus;

  /// Site variables.
  final List<Variable> vars;

  /// Site request timeout in seconds.
  final int timeout;

  /// The install command used to install the site dependencies.
  final String installCommand;

  /// The build command used to build the site.
  final String buildCommand;

  /// The directory where the site build output is located.
  final String outputDirectory;

  /// Site VCS (Version Control System) installation id.
  final String installationId;

  /// VCS (Version Control System) Repository ID
  final String providerRepositoryId;

  /// VCS (Version Control System) branch name
  final String providerBranch;

  /// Path to site in VCS (Version Control System) repository
  final String providerRootDirectory;

  /// Is VCS (Version Control System) connection is in silent mode? When in silence mode, no comments will be posted on the repository pull or merge requests
  final bool providerSilentMode;

  /// Machine specification for builds and executions.
  final String specification;

  /// Site build runtime.
  final String buildRuntime;

  /// Site framework adapter.
  final String adapter;

  /// Name of fallback file to use instead of 404 page. If null, Appwrite 404 page will be displayed.
  final String fallbackFile;

  Site({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.enabled,
    required this.live,
    required this.logging,
    required this.framework,
    required this.deploymentId,
    required this.deploymentCreatedAt,
    required this.deploymentScreenshotLight,
    required this.deploymentScreenshotDark,
    required this.latestDeploymentId,
    required this.latestDeploymentCreatedAt,
    required this.latestDeploymentStatus,
    required this.vars,
    required this.timeout,
    required this.installCommand,
    required this.buildCommand,
    required this.outputDirectory,
    required this.installationId,
    required this.providerRepositoryId,
    required this.providerBranch,
    required this.providerRootDirectory,
    required this.providerSilentMode,
    required this.specification,
    required this.buildRuntime,
    required this.adapter,
    required this.fallbackFile,
  });

  factory Site.fromMap(Map<String, dynamic> map) {
    return Site(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      enabled: map['enabled'],
      live: map['live'],
      logging: map['logging'],
      framework: map['framework'].toString(),
      deploymentId: map['deploymentId'].toString(),
      deploymentCreatedAt: map['deploymentCreatedAt'].toString(),
      deploymentScreenshotLight: map['deploymentScreenshotLight'].toString(),
      deploymentScreenshotDark: map['deploymentScreenshotDark'].toString(),
      latestDeploymentId: map['latestDeploymentId'].toString(),
      latestDeploymentCreatedAt: map['latestDeploymentCreatedAt'].toString(),
      latestDeploymentStatus: map['latestDeploymentStatus'].toString(),
      vars: List<Variable>.from(map['vars'].map((p) => Variable.fromMap(p))),
      timeout: map['timeout'],
      installCommand: map['installCommand'].toString(),
      buildCommand: map['buildCommand'].toString(),
      outputDirectory: map['outputDirectory'].toString(),
      installationId: map['installationId'].toString(),
      providerRepositoryId: map['providerRepositoryId'].toString(),
      providerBranch: map['providerBranch'].toString(),
      providerRootDirectory: map['providerRootDirectory'].toString(),
      providerSilentMode: map['providerSilentMode'],
      specification: map['specification'].toString(),
      buildRuntime: map['buildRuntime'].toString(),
      adapter: map['adapter'].toString(),
      fallbackFile: map['fallbackFile'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "enabled": enabled,
      "live": live,
      "logging": logging,
      "framework": framework,
      "deploymentId": deploymentId,
      "deploymentCreatedAt": deploymentCreatedAt,
      "deploymentScreenshotLight": deploymentScreenshotLight,
      "deploymentScreenshotDark": deploymentScreenshotDark,
      "latestDeploymentId": latestDeploymentId,
      "latestDeploymentCreatedAt": latestDeploymentCreatedAt,
      "latestDeploymentStatus": latestDeploymentStatus,
      "vars": vars.map((p) => p.toMap()).toList(),
      "timeout": timeout,
      "installCommand": installCommand,
      "buildCommand": buildCommand,
      "outputDirectory": outputDirectory,
      "installationId": installationId,
      "providerRepositoryId": providerRepositoryId,
      "providerBranch": providerBranch,
      "providerRootDirectory": providerRootDirectory,
      "providerSilentMode": providerSilentMode,
      "specification": specification,
      "buildRuntime": buildRuntime,
      "adapter": adapter,
      "fallbackFile": fallbackFile,
    };
  }
}
