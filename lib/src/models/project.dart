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

    /// Project description.
    final String description;

    /// Project team ID.
    final String teamId;

    /// Project logo file ID.
    final String logo;

    /// Project website URL.
    final String url;

    /// Company legal name.
    final String legalName;

    /// Country code in [ISO 3166-1](http://en.wikipedia.org/wiki/ISO_3166-1) two-character format.
    final String legalCountry;

    /// State name.
    final String legalState;

    /// City name.
    final String legalCity;

    /// Company Address.
    final String legalAddress;

    /// Company Tax ID.
    final String legalTaxId;

    /// Session duration in seconds.
    final int authDuration;

    /// Max users allowed. 0 is unlimited.
    final int authLimit;

    /// Max sessions allowed per user. 100 maximum.
    final int authSessionsLimit;

    /// Max allowed passwords in the history list per user. Max passwords limit allowed in history is 20. Use 0 for disabling password history.
    final int authPasswordHistory;

    /// Whether or not to check user&#039;s password against most commonly used passwords.
    final bool authPasswordDictionary;

    /// Whether or not to check the user password for similarity with their personal data.
    final bool authPersonalDataCheck;

    /// Whether or not to disallow disposable email addresses during signup and email updates.
    final bool authDisposableEmails;

    /// Whether or not to require canonical email addresses during signup and email updates.
    final bool authCanonicalEmails;

    /// Whether or not to disallow free email addresses during signup and email updates.
    final bool authFreeEmails;

    /// An array of mock numbers and their corresponding verification codes (OTPs).
    final List<MockNumber> authMockNumbers;

    /// Whether or not to send session alert emails to users.
    final bool authSessionAlerts;

    /// Whether or not to show user names in the teams membership response.
    final bool authMembershipsUserName;

    /// Whether or not to show user emails in the teams membership response.
    final bool authMembershipsUserEmail;

    /// Whether or not to show user MFA status in the teams membership response.
    final bool authMembershipsMfa;

    /// Whether or not all existing sessions should be invalidated on password change
    final bool authInvalidateSessions;

    /// List of Auth Providers.
    final List<AuthProvider> oAuthProviders;

    /// List of Platforms.
    final List platforms;

    /// List of Webhooks.
    final List<Webhook> webhooks;

    /// List of API Keys.
    final List<Key> keys;

    /// List of dev keys.
    final List<DevKey> devKeys;

    /// Status for custom SMTP
    final bool smtpEnabled;

    /// SMTP sender name
    final String smtpSenderName;

    /// SMTP sender email
    final String smtpSenderEmail;

    /// SMTP reply to email
    final String smtpReplyTo;

    /// SMTP server host name
    final String smtpHost;

    /// SMTP server port
    final int smtpPort;

    /// SMTP server username
    final String smtpUsername;

    /// SMTP server password
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

    /// Email/Password auth method status
    final bool authEmailPassword;

    /// Magic URL auth method status
    final bool authUsersAuthMagicURL;

    /// Email (OTP) auth method status
    final bool authEmailOtp;

    /// Anonymous auth method status
    final bool authAnonymous;

    /// Invites auth method status
    final bool authInvites;

    /// JWT auth method status
    final bool authJWT;

    /// Phone auth method status
    final bool authPhone;

    /// Account service status
    final bool serviceStatusForAccount;

    /// Avatars service status
    final bool serviceStatusForAvatars;

    /// Databases (legacy) service status
    final bool serviceStatusForDatabases;

    /// TablesDB service status
    final bool serviceStatusForTablesdb;

    /// Locale service status
    final bool serviceStatusForLocale;

    /// Health service status
    final bool serviceStatusForHealth;

    /// Project service status
    final bool serviceStatusForProject;

    /// Storage service status
    final bool serviceStatusForStorage;

    /// Teams service status
    final bool serviceStatusForTeams;

    /// Users service status
    final bool serviceStatusForUsers;

    /// VCS service status
    final bool serviceStatusForVcs;

    /// Sites service status
    final bool serviceStatusForSites;

    /// Functions service status
    final bool serviceStatusForFunctions;

    /// Proxy service status
    final bool serviceStatusForProxy;

    /// GraphQL service status
    final bool serviceStatusForGraphql;

    /// Migrations service status
    final bool serviceStatusForMigrations;

    /// Messaging service status
    final bool serviceStatusForMessaging;

    /// REST protocol status
    final bool protocolStatusForRest;

    /// GraphQL protocol status
    final bool protocolStatusForGraphql;

    /// Websocket protocol status
    final bool protocolStatusForWebsocket;

    /// Project region
    final String region;

    /// Billing limits reached
    final BillingLimits billingLimits;

    /// Project blocks information
    final List<Block> blocks;

    /// Last time the project was accessed via console. Used with plan&#039;s projectInactivityDays to determine if project is paused.
    final String consoleAccessedAt;

    Project({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.name,
        required this.description,
        required this.teamId,
        required this.logo,
        required this.url,
        required this.legalName,
        required this.legalCountry,
        required this.legalState,
        required this.legalCity,
        required this.legalAddress,
        required this.legalTaxId,
        required this.authDuration,
        required this.authLimit,
        required this.authSessionsLimit,
        required this.authPasswordHistory,
        required this.authPasswordDictionary,
        required this.authPersonalDataCheck,
        required this.authDisposableEmails,
        required this.authCanonicalEmails,
        required this.authFreeEmails,
        required this.authMockNumbers,
        required this.authSessionAlerts,
        required this.authMembershipsUserName,
        required this.authMembershipsUserEmail,
        required this.authMembershipsMfa,
        required this.authInvalidateSessions,
        required this.oAuthProviders,
        required this.platforms,
        required this.webhooks,
        required this.keys,
        required this.devKeys,
        required this.smtpEnabled,
        required this.smtpSenderName,
        required this.smtpSenderEmail,
        required this.smtpReplyTo,
        required this.smtpHost,
        required this.smtpPort,
        required this.smtpUsername,
        required this.smtpPassword,
        required this.smtpSecure,
        required this.pingCount,
        required this.pingedAt,
        required this.labels,
        required this.status,
        required this.authEmailPassword,
        required this.authUsersAuthMagicURL,
        required this.authEmailOtp,
        required this.authAnonymous,
        required this.authInvites,
        required this.authJWT,
        required this.authPhone,
        required this.serviceStatusForAccount,
        required this.serviceStatusForAvatars,
        required this.serviceStatusForDatabases,
        required this.serviceStatusForTablesdb,
        required this.serviceStatusForLocale,
        required this.serviceStatusForHealth,
        required this.serviceStatusForProject,
        required this.serviceStatusForStorage,
        required this.serviceStatusForTeams,
        required this.serviceStatusForUsers,
        required this.serviceStatusForVcs,
        required this.serviceStatusForSites,
        required this.serviceStatusForFunctions,
        required this.serviceStatusForProxy,
        required this.serviceStatusForGraphql,
        required this.serviceStatusForMigrations,
        required this.serviceStatusForMessaging,
        required this.protocolStatusForRest,
        required this.protocolStatusForGraphql,
        required this.protocolStatusForWebsocket,
        required this.region,
        required this.billingLimits,
        required this.blocks,
        required this.consoleAccessedAt,
    });

    factory Project.fromMap(Map<String, dynamic> map) {
        return Project(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            name: map['name'].toString(),
            description: map['description'].toString(),
            teamId: map['teamId'].toString(),
            logo: map['logo'].toString(),
            url: map['url'].toString(),
            legalName: map['legalName'].toString(),
            legalCountry: map['legalCountry'].toString(),
            legalState: map['legalState'].toString(),
            legalCity: map['legalCity'].toString(),
            legalAddress: map['legalAddress'].toString(),
            legalTaxId: map['legalTaxId'].toString(),
            authDuration: map['authDuration'],
            authLimit: map['authLimit'],
            authSessionsLimit: map['authSessionsLimit'],
            authPasswordHistory: map['authPasswordHistory'],
            authPasswordDictionary: map['authPasswordDictionary'],
            authPersonalDataCheck: map['authPersonalDataCheck'],
            authDisposableEmails: map['authDisposableEmails'],
            authCanonicalEmails: map['authCanonicalEmails'],
            authFreeEmails: map['authFreeEmails'],
            authMockNumbers: List<MockNumber>.from(map['authMockNumbers'].map((p) => MockNumber.fromMap(p))),
            authSessionAlerts: map['authSessionAlerts'],
            authMembershipsUserName: map['authMembershipsUserName'],
            authMembershipsUserEmail: map['authMembershipsUserEmail'],
            authMembershipsMfa: map['authMembershipsMfa'],
            authInvalidateSessions: map['authInvalidateSessions'],
            oAuthProviders: List<AuthProvider>.from(map['oAuthProviders'].map((p) => AuthProvider.fromMap(p))),
            platforms: List.from(map['platforms'] ?? []),
            webhooks: List<Webhook>.from(map['webhooks'].map((p) => Webhook.fromMap(p))),
            keys: List<Key>.from(map['keys'].map((p) => Key.fromMap(p))),
            devKeys: List<DevKey>.from(map['devKeys'].map((p) => DevKey.fromMap(p))),
            smtpEnabled: map['smtpEnabled'],
            smtpSenderName: map['smtpSenderName'].toString(),
            smtpSenderEmail: map['smtpSenderEmail'].toString(),
            smtpReplyTo: map['smtpReplyTo'].toString(),
            smtpHost: map['smtpHost'].toString(),
            smtpPort: map['smtpPort'],
            smtpUsername: map['smtpUsername'].toString(),
            smtpPassword: map['smtpPassword'].toString(),
            smtpSecure: map['smtpSecure'].toString(),
            pingCount: map['pingCount'],
            pingedAt: map['pingedAt'].toString(),
            labels: List.from(map['labels'] ?? []),
            status: map['status'].toString(),
            authEmailPassword: map['authEmailPassword'],
            authUsersAuthMagicURL: map['authUsersAuthMagicURL'],
            authEmailOtp: map['authEmailOtp'],
            authAnonymous: map['authAnonymous'],
            authInvites: map['authInvites'],
            authJWT: map['authJWT'],
            authPhone: map['authPhone'],
            serviceStatusForAccount: map['serviceStatusForAccount'],
            serviceStatusForAvatars: map['serviceStatusForAvatars'],
            serviceStatusForDatabases: map['serviceStatusForDatabases'],
            serviceStatusForTablesdb: map['serviceStatusForTablesdb'],
            serviceStatusForLocale: map['serviceStatusForLocale'],
            serviceStatusForHealth: map['serviceStatusForHealth'],
            serviceStatusForProject: map['serviceStatusForProject'],
            serviceStatusForStorage: map['serviceStatusForStorage'],
            serviceStatusForTeams: map['serviceStatusForTeams'],
            serviceStatusForUsers: map['serviceStatusForUsers'],
            serviceStatusForVcs: map['serviceStatusForVcs'],
            serviceStatusForSites: map['serviceStatusForSites'],
            serviceStatusForFunctions: map['serviceStatusForFunctions'],
            serviceStatusForProxy: map['serviceStatusForProxy'],
            serviceStatusForGraphql: map['serviceStatusForGraphql'],
            serviceStatusForMigrations: map['serviceStatusForMigrations'],
            serviceStatusForMessaging: map['serviceStatusForMessaging'],
            protocolStatusForRest: map['protocolStatusForRest'],
            protocolStatusForGraphql: map['protocolStatusForGraphql'],
            protocolStatusForWebsocket: map['protocolStatusForWebsocket'],
            region: map['region'].toString(),
            billingLimits: BillingLimits.fromMap(map['billingLimits']),
            blocks: List<Block>.from(map['blocks'].map((p) => Block.fromMap(p))),
            consoleAccessedAt: map['consoleAccessedAt'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "name": name,
            "description": description,
            "teamId": teamId,
            "logo": logo,
            "url": url,
            "legalName": legalName,
            "legalCountry": legalCountry,
            "legalState": legalState,
            "legalCity": legalCity,
            "legalAddress": legalAddress,
            "legalTaxId": legalTaxId,
            "authDuration": authDuration,
            "authLimit": authLimit,
            "authSessionsLimit": authSessionsLimit,
            "authPasswordHistory": authPasswordHistory,
            "authPasswordDictionary": authPasswordDictionary,
            "authPersonalDataCheck": authPersonalDataCheck,
            "authDisposableEmails": authDisposableEmails,
            "authCanonicalEmails": authCanonicalEmails,
            "authFreeEmails": authFreeEmails,
            "authMockNumbers": authMockNumbers.map((p) => p.toMap()).toList(),
            "authSessionAlerts": authSessionAlerts,
            "authMembershipsUserName": authMembershipsUserName,
            "authMembershipsUserEmail": authMembershipsUserEmail,
            "authMembershipsMfa": authMembershipsMfa,
            "authInvalidateSessions": authInvalidateSessions,
            "oAuthProviders": oAuthProviders.map((p) => p.toMap()).toList(),
            "platforms": platforms,
            "webhooks": webhooks.map((p) => p.toMap()).toList(),
            "keys": keys.map((p) => p.toMap()).toList(),
            "devKeys": devKeys.map((p) => p.toMap()).toList(),
            "smtpEnabled": smtpEnabled,
            "smtpSenderName": smtpSenderName,
            "smtpSenderEmail": smtpSenderEmail,
            "smtpReplyTo": smtpReplyTo,
            "smtpHost": smtpHost,
            "smtpPort": smtpPort,
            "smtpUsername": smtpUsername,
            "smtpPassword": smtpPassword,
            "smtpSecure": smtpSecure,
            "pingCount": pingCount,
            "pingedAt": pingedAt,
            "labels": labels,
            "status": status,
            "authEmailPassword": authEmailPassword,
            "authUsersAuthMagicURL": authUsersAuthMagicURL,
            "authEmailOtp": authEmailOtp,
            "authAnonymous": authAnonymous,
            "authInvites": authInvites,
            "authJWT": authJWT,
            "authPhone": authPhone,
            "serviceStatusForAccount": serviceStatusForAccount,
            "serviceStatusForAvatars": serviceStatusForAvatars,
            "serviceStatusForDatabases": serviceStatusForDatabases,
            "serviceStatusForTablesdb": serviceStatusForTablesdb,
            "serviceStatusForLocale": serviceStatusForLocale,
            "serviceStatusForHealth": serviceStatusForHealth,
            "serviceStatusForProject": serviceStatusForProject,
            "serviceStatusForStorage": serviceStatusForStorage,
            "serviceStatusForTeams": serviceStatusForTeams,
            "serviceStatusForUsers": serviceStatusForUsers,
            "serviceStatusForVcs": serviceStatusForVcs,
            "serviceStatusForSites": serviceStatusForSites,
            "serviceStatusForFunctions": serviceStatusForFunctions,
            "serviceStatusForProxy": serviceStatusForProxy,
            "serviceStatusForGraphql": serviceStatusForGraphql,
            "serviceStatusForMigrations": serviceStatusForMigrations,
            "serviceStatusForMessaging": serviceStatusForMessaging,
            "protocolStatusForRest": protocolStatusForRest,
            "protocolStatusForGraphql": protocolStatusForGraphql,
            "protocolStatusForWebsocket": protocolStatusForWebsocket,
            "region": region,
            "billingLimits": billingLimits.toMap(),
            "blocks": blocks.map((p) => p.toMap()).toList(),
            "consoleAccessedAt": consoleAccessedAt,
        };
    }
}
