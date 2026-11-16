part of '../../models.dart';

/// Project
class Project implements Model {
  /// Project ID.
  final String $id;

  /// Project creation date in ISO 8601 format.
  final String $createdAt;

  /// Project update date in ISO 8601 format.
  final String $updatedAt;

  /// Project name.
  final String name;

  /// Project team ID.
  final String teamId;

  /// Project region
  final String region;

  /// Status for custom SMTP
  final bool smtpEnabled;

  /// SMTP sender name
  final String smtpSenderName;

  /// SMTP sender email
  final String smtpSenderEmail;

  /// SMTP reply to name
  final String smtpReplyToName;

  /// SMTP reply to email
  final String smtpReplyToEmail;

  /// SMTP server host name
  final String smtpHost;

  /// SMTP server port
  final int smtpPort;

  /// SMTP server username
  final String smtpUsername;

  /// SMTP server password. This property is write-only and always returned empty.
  final String smtpPassword;

  /// SMTP server secure protocol
  final String smtpSecure;

  /// Status for LDAP sign-in
  final bool ldapEnabled;

  /// LDAP directory hosts, tried in order.
  final List<String> ldapHosts;

  /// LDAP directory port.
  final int ldapPort;

  /// LDAP transport encryption: none, ldaps or starttls.
  final String ldapEncryption;

  /// Whether the LDAP directory certificate is verified.
  final bool ldapVerification;

  /// Certificate in PEM format of the authority that signed the LDAP directory certificate, or the directory certificate itself when it is self-signed. Empty for the system trust store.
  final String ldapCertificate;

  /// Seconds to wait for the LDAP directory to connect and answer.
  final int ldapTimeout;

  /// LDAP subtree the user search starts from.
  final String ldapBaseDn;

  /// LDAP service account used to search for users, empty for anonymous search.
  final String ldapBindDn;

  /// LDAP service account password. This property is write-only and always returned empty.
  final String ldapBindPassword;

  /// LDAP filter that finds the user signing in, with {username} where the username they enter goes.
  final String ldapUserFilter;

  /// LDAP group a user must belong to in order to sign in, empty to allow every user.
  final String ldapRequiredGroupDn;

  /// LDAP attribute holding the identifier that stays the same when an entry is renamed or moved.
  final String ldapIdAttribute;

  /// LDAP attribute holding the email address.
  final String ldapEmailAttribute;

  /// LDAP attribute holding the display name.
  final String ldapNameAttribute;

  /// LDAP attribute holding the phone number, empty when unmapped.
  final String ldapPhoneAttribute;

  /// Number of times the ping was received for this project.
  final int pingCount;

  /// Last ping datetime in ISO 8601 format.
  final String pingedAt;

  /// Labels for the project.
  final List<String> labels;

  /// Project preferences as a key-value object
  final Preferences? prefs;

  /// Project status
  final String status;

  /// Stage progress (completed or skipped) with timestamps and actor types, keyed by stage id.
  final Map<String, dynamic> onboarding;

  /// List of auth methods.
  final List<ProjectAuthMethod> authMethods;

  /// List of services.
  final List<ProjectService> services;

  /// List of protocols.
  final List<ProjectProtocol> protocols;

  /// Project blocks information
  final List<Block> blocks;

  /// Last time the project was accessed via console. Used with plan&#039;s projectInactivityDays to determine if project is paused.
  final String consoleAccessedAt;

  /// Whether WAF enforcement is enabled for the project.
  final bool? wafEnabled;

  /// ID of the project this environment belongs to. Null when the project is not an environment.
  final String? parentId;

  /// ID of the environment, as passed in the X-Appwrite-Environment header, when the project is accessed as one. Null when the project is not an environment.
  final String? environmentId;

  /// Billing limits reached
  final BillingLimits? billingLimits;

  /// First time the project received a non-console API request. Empty until the project is used.
  final String? firstAccessedAt;

  /// Last time the project was accessed through the MCP server. Empty if it was never accessed via MCP.
  final String? mcpAccessedAt;

  /// OAuth2 server status
  final bool? oAuth2ServerEnabled;

  /// OAuth2 server authorization URL
  final String? oAuth2ServerAuthorizationUrl;

  /// OAuth2 server allowed scopes
  final List<String>? oAuth2ServerScopes;

  /// OAuth2 server scopes used when an authorization request omits the scope parameter
  final List<String>? oAuth2ServerDefaultScopes;

  /// Scopes an application may request when installed on a team
  final List<String>? oAuth2ServerInstallationScopes;

  /// OAuth2 server accepted RFC 9396 authorization_details types
  final List<String>? oAuth2ServerAuthorizationDetailsTypes;

  /// OAuth2 server access token duration in seconds for confidential clients
  final int? oAuth2ServerAccessTokenDuration;

  /// OAuth2 server refresh token duration in seconds for confidential clients
  final int? oAuth2ServerRefreshTokenDuration;

  /// OAuth2 server access token duration in seconds for public clients (SPAs, mobile, native)
  final int? oAuth2ServerPublicAccessTokenDuration;

  /// OAuth2 server refresh token duration in seconds for public clients (SPAs, mobile, native)
  final int? oAuth2ServerPublicRefreshTokenDuration;

  /// OAuth2 server access token duration in seconds for app installation access tokens
  final int? oAuth2ServerInstallationAccessTokenDuration;

  /// When enabled, PKCE is required for confidential clients (server-side flows using client_secret). PKCE is always required for public clients regardless of this setting.
  final bool? oAuth2ServerConfidentialPkce;

  /// URL to your application page where users enter the device flow user code. Empty when the Device Authorization Grant is not configured.
  final String? oAuth2ServerVerificationUrl;

  /// Number of characters in the device flow user code, excluding the formatting separator.
  final int? oAuth2ServerUserCodeLength;

  /// Character set for device flow user codes: `numeric`, `alphabetic`, or `alphanumeric`.
  final String? oAuth2ServerUserCodeFormat;

  /// Lifetime in seconds of device flow device codes and user codes.
  final int? oAuth2ServerDeviceCodeDuration;

  /// OAuth2 server discovery URL
  final String? oAuth2ServerDiscoveryUrl;

  Project({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.teamId,
    required this.region,
    required this.smtpEnabled,
    required this.smtpSenderName,
    required this.smtpSenderEmail,
    required this.smtpReplyToName,
    required this.smtpReplyToEmail,
    required this.smtpHost,
    required this.smtpPort,
    required this.smtpUsername,
    required this.smtpPassword,
    required this.smtpSecure,
    required this.ldapEnabled,
    required this.ldapHosts,
    required this.ldapPort,
    required this.ldapEncryption,
    required this.ldapVerification,
    required this.ldapCertificate,
    required this.ldapTimeout,
    required this.ldapBaseDn,
    required this.ldapBindDn,
    required this.ldapBindPassword,
    required this.ldapUserFilter,
    required this.ldapRequiredGroupDn,
    required this.ldapIdAttribute,
    required this.ldapEmailAttribute,
    required this.ldapNameAttribute,
    required this.ldapPhoneAttribute,
    required this.pingCount,
    required this.pingedAt,
    required this.labels,
    this.prefs,
    required this.status,
    required this.onboarding,
    required this.authMethods,
    required this.services,
    required this.protocols,
    required this.blocks,
    required this.consoleAccessedAt,
    this.wafEnabled,
    this.parentId,
    this.environmentId,
    this.billingLimits,
    this.firstAccessedAt,
    this.mcpAccessedAt,
    this.oAuth2ServerEnabled,
    this.oAuth2ServerAuthorizationUrl,
    this.oAuth2ServerScopes,
    this.oAuth2ServerDefaultScopes,
    this.oAuth2ServerInstallationScopes,
    this.oAuth2ServerAuthorizationDetailsTypes,
    this.oAuth2ServerAccessTokenDuration,
    this.oAuth2ServerRefreshTokenDuration,
    this.oAuth2ServerPublicAccessTokenDuration,
    this.oAuth2ServerPublicRefreshTokenDuration,
    this.oAuth2ServerInstallationAccessTokenDuration,
    this.oAuth2ServerConfidentialPkce,
    this.oAuth2ServerVerificationUrl,
    this.oAuth2ServerUserCodeLength,
    this.oAuth2ServerUserCodeFormat,
    this.oAuth2ServerDeviceCodeDuration,
    this.oAuth2ServerDiscoveryUrl,
  });
  factory Project.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'name': "",
      'teamId': "",
      'region': "fra",
      'smtpEnabled': false,
      'smtpSenderName': "",
      'smtpSenderEmail': "",
      'smtpReplyToName': "",
      'smtpReplyToEmail': "",
      'smtpHost': "",
      'smtpPort': 0,
      'smtpUsername': "",
      'smtpPassword': "",
      'smtpSecure': "",
      'ldapEnabled': false,
      'ldapHosts': [],
      'ldapPort': 636,
      'ldapEncryption': "ldaps",
      'ldapVerification': true,
      'ldapCertificate': "",
      'ldapTimeout': 10,
      'ldapBaseDn': "",
      'ldapBindDn': "",
      'ldapBindPassword': "",
      'ldapUserFilter': "(uid={username})",
      'ldapRequiredGroupDn': "",
      'ldapIdAttribute': "entryUUID",
      'ldapEmailAttribute': "mail",
      'ldapNameAttribute': "cn",
      'ldapPhoneAttribute': "",
      'pingCount': 0,
      'pingedAt': "",
      'labels': [],
      'status': "active",
      'onboarding': <String, dynamic>{},
      'authMethods': [],
      'services': [],
      'protocols': [],
      'blocks': [],
      'consoleAccessedAt': "",
      ...map,
    };

    return Project(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      teamId: map['teamId'].toString(),
      region: map['region'].toString(),
      smtpEnabled: map['smtpEnabled'],
      smtpSenderName: map['smtpSenderName'].toString(),
      smtpSenderEmail: map['smtpSenderEmail'].toString(),
      smtpReplyToName: map['smtpReplyToName'].toString(),
      smtpReplyToEmail: map['smtpReplyToEmail'].toString(),
      smtpHost: map['smtpHost'].toString(),
      smtpPort: map['smtpPort'],
      smtpUsername: map['smtpUsername'].toString(),
      smtpPassword: map['smtpPassword'].toString(),
      smtpSecure: map['smtpSecure'].toString(),
      ldapEnabled: map['ldapEnabled'],
      ldapHosts: List.from(map['ldapHosts'] ?? []),
      ldapPort: map['ldapPort'],
      ldapEncryption: map['ldapEncryption'].toString(),
      ldapVerification: map['ldapVerification'],
      ldapCertificate: map['ldapCertificate'].toString(),
      ldapTimeout: map['ldapTimeout'],
      ldapBaseDn: map['ldapBaseDn'].toString(),
      ldapBindDn: map['ldapBindDn'].toString(),
      ldapBindPassword: map['ldapBindPassword'].toString(),
      ldapUserFilter: map['ldapUserFilter'].toString(),
      ldapRequiredGroupDn: map['ldapRequiredGroupDn'].toString(),
      ldapIdAttribute: map['ldapIdAttribute'].toString(),
      ldapEmailAttribute: map['ldapEmailAttribute'].toString(),
      ldapNameAttribute: map['ldapNameAttribute'].toString(),
      ldapPhoneAttribute: map['ldapPhoneAttribute'].toString(),
      pingCount: map['pingCount'],
      pingedAt: map['pingedAt'].toString(),
      labels: List.from(map['labels'] ?? []),
      prefs: map['prefs'] != null
          ? Preferences.fromMap(
              map['prefs'],
            )
          : null,
      status: map['status'].toString(),
      onboarding: map['onboarding'],
      authMethods: List<ProjectAuthMethod>.from(
        map['authMethods'].map((p) => ProjectAuthMethod.fromMap(p)),
      ),
      services: List<ProjectService>.from(
        map['services'].map((p) => ProjectService.fromMap(p)),
      ),
      protocols: List<ProjectProtocol>.from(
        map['protocols'].map((p) => ProjectProtocol.fromMap(p)),
      ),
      blocks: List<Block>.from(
        map['blocks'].map((p) => Block.fromMap(p)),
      ),
      consoleAccessedAt: map['consoleAccessedAt'].toString(),
      wafEnabled: map['wafEnabled'],
      parentId: map['parentId']?.toString(),
      environmentId: map['environmentId']?.toString(),
      billingLimits: map['billingLimits'] != null
          ? BillingLimits.fromMap(
              map['billingLimits'],
            )
          : null,
      firstAccessedAt: map['firstAccessedAt']?.toString(),
      mcpAccessedAt: map['mcpAccessedAt']?.toString(),
      oAuth2ServerEnabled: map['oAuth2ServerEnabled'],
      oAuth2ServerAuthorizationUrl:
          map['oAuth2ServerAuthorizationUrl']?.toString(),
      oAuth2ServerScopes: List.from(map['oAuth2ServerScopes'] ?? []),
      oAuth2ServerDefaultScopes:
          List.from(map['oAuth2ServerDefaultScopes'] ?? []),
      oAuth2ServerInstallationScopes:
          List.from(map['oAuth2ServerInstallationScopes'] ?? []),
      oAuth2ServerAuthorizationDetailsTypes:
          List.from(map['oAuth2ServerAuthorizationDetailsTypes'] ?? []),
      oAuth2ServerAccessTokenDuration: map['oAuth2ServerAccessTokenDuration'],
      oAuth2ServerRefreshTokenDuration: map['oAuth2ServerRefreshTokenDuration'],
      oAuth2ServerPublicAccessTokenDuration:
          map['oAuth2ServerPublicAccessTokenDuration'],
      oAuth2ServerPublicRefreshTokenDuration:
          map['oAuth2ServerPublicRefreshTokenDuration'],
      oAuth2ServerInstallationAccessTokenDuration:
          map['oAuth2ServerInstallationAccessTokenDuration'],
      oAuth2ServerConfidentialPkce: map['oAuth2ServerConfidentialPkce'],
      oAuth2ServerVerificationUrl:
          map['oAuth2ServerVerificationUrl']?.toString(),
      oAuth2ServerUserCodeLength: map['oAuth2ServerUserCodeLength'],
      oAuth2ServerUserCodeFormat: map['oAuth2ServerUserCodeFormat']?.toString(),
      oAuth2ServerDeviceCodeDuration: map['oAuth2ServerDeviceCodeDuration'],
      oAuth2ServerDiscoveryUrl: map['oAuth2ServerDiscoveryUrl']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "teamId": teamId,
      "region": region,
      "smtpEnabled": smtpEnabled,
      "smtpSenderName": smtpSenderName,
      "smtpSenderEmail": smtpSenderEmail,
      "smtpReplyToName": smtpReplyToName,
      "smtpReplyToEmail": smtpReplyToEmail,
      "smtpHost": smtpHost,
      "smtpPort": smtpPort,
      "smtpUsername": smtpUsername,
      "smtpPassword": smtpPassword,
      "smtpSecure": smtpSecure,
      "ldapEnabled": ldapEnabled,
      "ldapHosts": ldapHosts,
      "ldapPort": ldapPort,
      "ldapEncryption": ldapEncryption,
      "ldapVerification": ldapVerification,
      "ldapCertificate": ldapCertificate,
      "ldapTimeout": ldapTimeout,
      "ldapBaseDn": ldapBaseDn,
      "ldapBindDn": ldapBindDn,
      "ldapBindPassword": ldapBindPassword,
      "ldapUserFilter": ldapUserFilter,
      "ldapRequiredGroupDn": ldapRequiredGroupDn,
      "ldapIdAttribute": ldapIdAttribute,
      "ldapEmailAttribute": ldapEmailAttribute,
      "ldapNameAttribute": ldapNameAttribute,
      "ldapPhoneAttribute": ldapPhoneAttribute,
      "pingCount": pingCount,
      "pingedAt": pingedAt,
      "labels": labels,
      "prefs": prefs?.toMap(),
      "status": status,
      "onboarding": onboarding,
      "authMethods": authMethods.map((p) => p.toMap()).toList(),
      "services": services.map((p) => p.toMap()).toList(),
      "protocols": protocols.map((p) => p.toMap()).toList(),
      "blocks": blocks.map((p) => p.toMap()).toList(),
      "consoleAccessedAt": consoleAccessedAt,
      "wafEnabled": wafEnabled,
      "parentId": parentId,
      "environmentId": environmentId,
      "billingLimits": billingLimits?.toMap(),
      "firstAccessedAt": firstAccessedAt,
      "mcpAccessedAt": mcpAccessedAt,
      "oAuth2ServerEnabled": oAuth2ServerEnabled,
      "oAuth2ServerAuthorizationUrl": oAuth2ServerAuthorizationUrl,
      "oAuth2ServerScopes": oAuth2ServerScopes,
      "oAuth2ServerDefaultScopes": oAuth2ServerDefaultScopes,
      "oAuth2ServerInstallationScopes": oAuth2ServerInstallationScopes,
      "oAuth2ServerAuthorizationDetailsTypes":
          oAuth2ServerAuthorizationDetailsTypes,
      "oAuth2ServerAccessTokenDuration": oAuth2ServerAccessTokenDuration,
      "oAuth2ServerRefreshTokenDuration": oAuth2ServerRefreshTokenDuration,
      "oAuth2ServerPublicAccessTokenDuration":
          oAuth2ServerPublicAccessTokenDuration,
      "oAuth2ServerPublicRefreshTokenDuration":
          oAuth2ServerPublicRefreshTokenDuration,
      "oAuth2ServerInstallationAccessTokenDuration":
          oAuth2ServerInstallationAccessTokenDuration,
      "oAuth2ServerConfidentialPkce": oAuth2ServerConfidentialPkce,
      "oAuth2ServerVerificationUrl": oAuth2ServerVerificationUrl,
      "oAuth2ServerUserCodeLength": oAuth2ServerUserCodeLength,
      "oAuth2ServerUserCodeFormat": oAuth2ServerUserCodeFormat,
      "oAuth2ServerDeviceCodeDuration": oAuth2ServerDeviceCodeDuration,
      "oAuth2ServerDiscoveryUrl": oAuth2ServerDiscoveryUrl,
    };
  }
}
