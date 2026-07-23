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

    /// Deprecated since 1.9.5: List of dev keys.
    final List<DevKey> devKeys;

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

    /// Number of times the ping was received for this project.
    final int pingCount;

    /// Last ping datetime in ISO 8601 format.
    final String pingedAt;

    /// Labels for the project.
    final List<String> labels;

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
    final bool wafEnabled;

    /// Billing limits reached
    final BillingLimits? billingLimits;

    /// OAuth2 server status
    final bool? oAuth2ServerEnabled;

    /// OAuth2 server authorization URL
    final String? oAuth2ServerAuthorizationUrl;

    /// OAuth2 server allowed scopes
    final List<String>? oAuth2ServerScopes;

    /// OAuth2 server scopes used when an authorization request omits the scope parameter
    final List<String>? oAuth2ServerDefaultScopes;

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
        required this.devKeys,
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
        required this.pingCount,
        required this.pingedAt,
        required this.labels,
        required this.status,
        required this.onboarding,
        required this.authMethods,
        required this.services,
        required this.protocols,
        required this.blocks,
        required this.consoleAccessedAt,
        required this.wafEnabled,
        this.billingLimits,
        this.oAuth2ServerEnabled,
        this.oAuth2ServerAuthorizationUrl,
        this.oAuth2ServerScopes,
        this.oAuth2ServerDefaultScopes,
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

    factory Project.fromMap(Map<String, dynamic> map) {
        return Project(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            name: map['name'].toString(),
            teamId: map['teamId'].toString(),
            region: map['region'].toString(),
            devKeys: List<DevKey>.from(map['devKeys'].map((p) => DevKey.fromMap(p))),
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
            pingCount: map['pingCount'],
            pingedAt: map['pingedAt'].toString(),
            labels: List.from(map['labels'] ?? []),
            status: map['status'].toString(),
            onboarding: map['onboarding'],
            authMethods: List<ProjectAuthMethod>.from(map['authMethods'].map((p) => ProjectAuthMethod.fromMap(p))),
            services: List<ProjectService>.from(map['services'].map((p) => ProjectService.fromMap(p))),
            protocols: List<ProjectProtocol>.from(map['protocols'].map((p) => ProjectProtocol.fromMap(p))),
            blocks: List<Block>.from(map['blocks'].map((p) => Block.fromMap(p))),
            consoleAccessedAt: map['consoleAccessedAt'].toString(),
            wafEnabled: map['wafEnabled'],
            billingLimits: map['billingLimits'] != null ? BillingLimits.fromMap(map['billingLimits']) : null,
            oAuth2ServerEnabled: map['oAuth2ServerEnabled'],
            oAuth2ServerAuthorizationUrl: map['oAuth2ServerAuthorizationUrl']?.toString(),
            oAuth2ServerScopes: List.from(map['oAuth2ServerScopes'] ?? []),
            oAuth2ServerDefaultScopes: List.from(map['oAuth2ServerDefaultScopes'] ?? []),
            oAuth2ServerAuthorizationDetailsTypes: List.from(map['oAuth2ServerAuthorizationDetailsTypes'] ?? []),
            oAuth2ServerAccessTokenDuration: map['oAuth2ServerAccessTokenDuration'],
            oAuth2ServerRefreshTokenDuration: map['oAuth2ServerRefreshTokenDuration'],
            oAuth2ServerPublicAccessTokenDuration: map['oAuth2ServerPublicAccessTokenDuration'],
            oAuth2ServerPublicRefreshTokenDuration: map['oAuth2ServerPublicRefreshTokenDuration'],
            oAuth2ServerInstallationAccessTokenDuration: map['oAuth2ServerInstallationAccessTokenDuration'],
            oAuth2ServerConfidentialPkce: map['oAuth2ServerConfidentialPkce'],
            oAuth2ServerVerificationUrl: map['oAuth2ServerVerificationUrl']?.toString(),
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
            "devKeys": devKeys.map((p) => p.toMap()).toList(),
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
            "pingCount": pingCount,
            "pingedAt": pingedAt,
            "labels": labels,
            "status": status,
            "onboarding": onboarding,
            "authMethods": authMethods.map((p) => p.toMap()).toList(),
            "services": services.map((p) => p.toMap()).toList(),
            "protocols": protocols.map((p) => p.toMap()).toList(),
            "blocks": blocks.map((p) => p.toMap()).toList(),
            "consoleAccessedAt": consoleAccessedAt,
            "wafEnabled": wafEnabled,
            "billingLimits": billingLimits?.toMap(),
            "oAuth2ServerEnabled": oAuth2ServerEnabled,
            "oAuth2ServerAuthorizationUrl": oAuth2ServerAuthorizationUrl,
            "oAuth2ServerScopes": oAuth2ServerScopes,
            "oAuth2ServerDefaultScopes": oAuth2ServerDefaultScopes,
            "oAuth2ServerAuthorizationDetailsTypes": oAuth2ServerAuthorizationDetailsTypes,
            "oAuth2ServerAccessTokenDuration": oAuth2ServerAccessTokenDuration,
            "oAuth2ServerRefreshTokenDuration": oAuth2ServerRefreshTokenDuration,
            "oAuth2ServerPublicAccessTokenDuration": oAuth2ServerPublicAccessTokenDuration,
            "oAuth2ServerPublicRefreshTokenDuration": oAuth2ServerPublicRefreshTokenDuration,
            "oAuth2ServerInstallationAccessTokenDuration": oAuth2ServerInstallationAccessTokenDuration,
            "oAuth2ServerConfidentialPkce": oAuth2ServerConfidentialPkce,
            "oAuth2ServerVerificationUrl": oAuth2ServerVerificationUrl,
            "oAuth2ServerUserCodeLength": oAuth2ServerUserCodeLength,
            "oAuth2ServerUserCodeFormat": oAuth2ServerUserCodeFormat,
            "oAuth2ServerDeviceCodeDuration": oAuth2ServerDeviceCodeDuration,
            "oAuth2ServerDiscoveryUrl": oAuth2ServerDiscoveryUrl,
        };
    }
}
