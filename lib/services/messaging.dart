part of dart_appwrite;

/// The Messaging service allows you to send messages to any provider type
/// (SMTP, push notification, SMS, etc.).
class Messaging extends Service {
    Messaging(super.client);

    /// List messages
    ///
    Future<models.MessageList> listMessages({List<String>? queries, String? search}) async {
        final String apiPath = '/messaging/messages';

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MessageList.fromMap(res.data);

    }

    /// Create an email.
    ///
    Future<models.Message> createEmail({required String messageId, required String subject, required String content, List<String>? topics, List<String>? users, List<String>? targets, List<String>? cc, List<String>? bcc, enums.MessageType? status, bool? html, String? scheduledAt}) async {
        final String apiPath = '/messaging/messages/email';

        final Map<String, dynamic> apiParams = {
            
            'messageId': messageId,
'subject': subject,
'content': content,
'topics': topics,
'users': users,
'targets': targets,
'cc': cc,
'bcc': bcc,
'status': status,
'html': html,
'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

    }

    /// Update an email.
    ///
    Future<models.Message> updateEmail({required String messageId, List<String>? topics, List<String>? users, List<String>? targets, String? subject, String? content, enums.MessageType? status, bool? html, List<String>? cc, List<String>? bcc, String? scheduledAt}) async {
        final String apiPath = '/messaging/messages/email/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            
            'topics': topics,
'users': users,
'targets': targets,
'subject': subject,
'content': content,
'status': status,
'html': html,
'cc': cc,
'bcc': bcc,
'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

    }

    /// Create a push notification.
    ///
    Future<models.Message> createPush({required String messageId, required String title, required String body, List<String>? topics, List<String>? users, List<String>? targets, Map? data, String? action, String? icon, String? sound, String? color, String? tag, String? badge, enums.MessageType? status, String? scheduledAt}) async {
        final String apiPath = '/messaging/messages/push';

        final Map<String, dynamic> apiParams = {
            
            'messageId': messageId,
'title': title,
'body': body,
'topics': topics,
'users': users,
'targets': targets,
'data': data,
'action': action,
'icon': icon,
'sound': sound,
'color': color,
'tag': tag,
'badge': badge,
'status': status,
'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

    }

    /// Update a push notification.
    ///
    Future<models.Message> updatePush({required String messageId, List<String>? topics, List<String>? users, List<String>? targets, String? title, String? body, Map? data, String? action, String? icon, String? sound, String? color, String? tag, int? badge, enums.MessageType? status, String? scheduledAt}) async {
        final String apiPath = '/messaging/messages/push/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            
            'topics': topics,
'users': users,
'targets': targets,
'title': title,
'body': body,
'data': data,
'action': action,
'icon': icon,
'sound': sound,
'color': color,
'tag': tag,
'badge': badge,
'status': status,
'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

    }

    /// Create an SMS.
    ///
    Future<models.Message> createSMS({required String messageId, required String content, List<String>? topics, List<String>? users, List<String>? targets, enums.MessageType? status, String? scheduledAt}) async {
        final String apiPath = '/messaging/messages/sms';

        final Map<String, dynamic> apiParams = {
            
            'messageId': messageId,
'content': content,
'topics': topics,
'users': users,
'targets': targets,
'status': status,
'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

    }

    /// Update an SMS.
    ///
    Future<models.Message> updateSMS({required String messageId, List<String>? topics, List<String>? users, List<String>? targets, String? content, enums.MessageType? status, String? scheduledAt}) async {
        final String apiPath = '/messaging/messages/sms/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            
            'topics': topics,
'users': users,
'targets': targets,
'content': content,
'status': status,
'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

    }

    /// Get a message
    ///
    Future<models.Message> getMessage({required String messageId}) async {
        final String apiPath = '/messaging/messages/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

    }

    /// Delete a message
    ///
    Future delete({required String messageId}) async {
        final String apiPath = '/messaging/messages/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// List message logs
    ///
    Future<models.LogList> listMessageLogs({required String messageId, List<String>? queries}) async {
        final String apiPath = '/messaging/messages/{messageId}/logs'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

    }

    /// List message targets
    ///
    /// List the targets associated with a message as set via the targets
    /// attribute.
    Future<models.TargetList> listTargets({required String messageId, List<String>? queries}) async {
        final String apiPath = '/messaging/messages/{messageId}/targets'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.TargetList.fromMap(res.data);

    }

    /// List providers
    ///
    Future<models.ProviderList> listProviders({List<String>? queries, String? search}) async {
        final String apiPath = '/messaging/providers';

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ProviderList.fromMap(res.data);

    }

    /// Create APNS provider
    ///
    Future<models.Provider> createAPNSProvider({required String providerId, required String name, String? authKey, String? authKeyId, String? teamId, String? bundleId, bool? enabled}) async {
        final String apiPath = '/messaging/providers/apns';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'authKey': authKey,
'authKeyId': authKeyId,
'teamId': teamId,
'bundleId': bundleId,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update APNS provider
    ///
    Future<models.Provider> updateAPNSProvider({required String providerId, String? name, bool? enabled, String? authKey, String? authKeyId, String? teamId, String? bundleId}) async {
        final String apiPath = '/messaging/providers/apns/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,
'authKey': authKey,
'authKeyId': authKeyId,
'teamId': teamId,
'bundleId': bundleId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create FCM provider
    ///
    Future<models.Provider> createFCMProvider({required String providerId, required String name, Map? serviceAccountJSON, bool? enabled}) async {
        final String apiPath = '/messaging/providers/fcm';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'serviceAccountJSON': serviceAccountJSON,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update FCM provider
    ///
    Future<models.Provider> updateFCMProvider({required String providerId, String? name, bool? enabled, Map? serviceAccountJSON}) async {
        final String apiPath = '/messaging/providers/fcm/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,
'serviceAccountJSON': serviceAccountJSON,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create Mailgun provider
    ///
    Future<models.Provider> createMailgunProvider({required String providerId, required String name, String? apiKey, String? domain, bool? isEuRegion, String? fromName, String? fromEmail, String? replyToName, String? replyToEmail, bool? enabled}) async {
        final String apiPath = '/messaging/providers/mailgun';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'apiKey': apiKey,
'domain': domain,
'isEuRegion': isEuRegion,
'fromName': fromName,
'fromEmail': fromEmail,
'replyToName': replyToName,
'replyToEmail': replyToEmail,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update Mailgun provider
    ///
    Future<models.Provider> updateMailgunProvider({required String providerId, String? name, String? apiKey, String? domain, bool? isEuRegion, bool? enabled, String? fromName, String? fromEmail, String? replyToName, String? replyToEmail}) async {
        final String apiPath = '/messaging/providers/mailgun/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'apiKey': apiKey,
'domain': domain,
'isEuRegion': isEuRegion,
'enabled': enabled,
'fromName': fromName,
'fromEmail': fromEmail,
'replyToName': replyToName,
'replyToEmail': replyToEmail,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create Msg91 provider
    ///
    Future<models.Provider> createMsg91Provider({required String providerId, required String name, String? from, String? senderId, String? authKey, bool? enabled}) async {
        final String apiPath = '/messaging/providers/msg91';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'from': from,
'senderId': senderId,
'authKey': authKey,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update Msg91 provider
    ///
    Future<models.Provider> updateMsg91Provider({required String providerId, String? name, bool? enabled, String? senderId, String? authKey, String? from}) async {
        final String apiPath = '/messaging/providers/msg91/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,
'senderId': senderId,
'authKey': authKey,
'from': from,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create Sendgrid provider
    ///
    Future<models.Provider> createSendgridProvider({required String providerId, required String name, String? apiKey, String? fromName, String? fromEmail, String? replyToName, String? replyToEmail, bool? enabled}) async {
        final String apiPath = '/messaging/providers/sendgrid';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'apiKey': apiKey,
'fromName': fromName,
'fromEmail': fromEmail,
'replyToName': replyToName,
'replyToEmail': replyToEmail,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update Sendgrid provider
    ///
    Future<models.Provider> updateSendgridProvider({required String providerId, String? name, bool? enabled, String? apiKey, String? fromName, String? fromEmail, String? replyToName, String? replyToEmail}) async {
        final String apiPath = '/messaging/providers/sendgrid/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,
'apiKey': apiKey,
'fromName': fromName,
'fromEmail': fromEmail,
'replyToName': replyToName,
'replyToEmail': replyToEmail,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create SMTP provider
    ///
    Future<models.Provider> createSMTPProvider({required String providerId, required String name, required String host, int? port, String? username, String? password, enums.SMTPEncryption? encryption, bool? autoTLS, String? mailer, String? fromName, String? fromEmail, String? replyToName, String? replyToEmail, bool? enabled}) async {
        final String apiPath = '/messaging/providers/smtp';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'host': host,
'port': port,
'username': username,
'password': password,
'encryption': encryption,
'autoTLS': autoTLS,
'mailer': mailer,
'fromName': fromName,
'fromEmail': fromEmail,
'replyToName': replyToName,
'replyToEmail': replyToEmail,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update SMTP provider
    ///
    Future<models.Provider> updateSMTPProvider({required String providerId, String? name, String? host, int? port, String? username, String? password, enums.SMTPEncryption? encryption, bool? autoTLS, String? fromName, String? fromEmail, String? replyToName, String? replyToEmail, bool? enabled}) async {
        final String apiPath = '/messaging/providers/smtp/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'host': host,
'port': port,
'username': username,
'password': password,
'encryption': encryption,
'autoTLS': autoTLS,
'fromName': fromName,
'fromEmail': fromEmail,
'replyToName': replyToName,
'replyToEmail': replyToEmail,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create Telesign provider
    ///
    Future<models.Provider> createTelesignProvider({required String providerId, required String name, String? from, String? username, String? password, bool? enabled}) async {
        final String apiPath = '/messaging/providers/telesign';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'from': from,
'username': username,
'password': password,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update Telesign provider
    ///
    Future<models.Provider> updateTelesignProvider({required String providerId, String? name, bool? enabled, String? username, String? password, String? from}) async {
        final String apiPath = '/messaging/providers/telesign/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,
'username': username,
'password': password,
'from': from,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create Textmagic provider
    ///
    Future<models.Provider> createTextmagicProvider({required String providerId, required String name, String? from, String? username, String? apiKey, bool? enabled}) async {
        final String apiPath = '/messaging/providers/textmagic';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'from': from,
'username': username,
'apiKey': apiKey,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update Textmagic provider
    ///
    Future<models.Provider> updateTextmagicProvider({required String providerId, String? name, bool? enabled, String? username, String? apiKey, String? from}) async {
        final String apiPath = '/messaging/providers/textmagic/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,
'username': username,
'apiKey': apiKey,
'from': from,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create Twilio provider
    ///
    Future<models.Provider> createTwilioProvider({required String providerId, required String name, String? from, String? accountSid, String? authToken, bool? enabled}) async {
        final String apiPath = '/messaging/providers/twilio';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'from': from,
'accountSid': accountSid,
'authToken': authToken,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update Twilio provider
    ///
    Future<models.Provider> updateTwilioProvider({required String providerId, String? name, bool? enabled, String? accountSid, String? authToken, String? from}) async {
        final String apiPath = '/messaging/providers/twilio/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,
'accountSid': accountSid,
'authToken': authToken,
'from': from,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Create Vonage provider
    ///
    Future<models.Provider> createVonageProvider({required String providerId, required String name, String? from, String? apiKey, String? apiSecret, bool? enabled}) async {
        final String apiPath = '/messaging/providers/vonage';

        final Map<String, dynamic> apiParams = {
            
            'providerId': providerId,
'name': name,
'from': from,
'apiKey': apiKey,
'apiSecret': apiSecret,
'enabled': enabled,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Update Vonage provider
    ///
    Future<models.Provider> updateVonageProvider({required String providerId, String? name, bool? enabled, String? apiKey, String? apiSecret, String? from}) async {
        final String apiPath = '/messaging/providers/vonage/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'enabled': enabled,
'apiKey': apiKey,
'apiSecret': apiSecret,
'from': from,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Get provider
    ///
    Future<models.Provider> getProvider({required String providerId}) async {
        final String apiPath = '/messaging/providers/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

    }

    /// Delete provider
    ///
    Future deleteProvider({required String providerId}) async {
        final String apiPath = '/messaging/providers/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// List provider logs
    ///
    Future<models.LogList> listProviderLogs({required String providerId, List<String>? queries}) async {
        final String apiPath = '/messaging/providers/{providerId}/logs'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

    }

    /// List subscriber logs
    ///
    Future<models.LogList> listSubscriberLogs({required String subscriberId, List<String>? queries}) async {
        final String apiPath = '/messaging/subscribers/{subscriberId}/logs'.replaceAll('{subscriberId}', subscriberId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

    }

    /// List topics.
    ///
    Future<models.TopicList> listTopics({List<String>? queries, String? search}) async {
        final String apiPath = '/messaging/topics';

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.TopicList.fromMap(res.data);

    }

    /// Create a topic.
    ///
    Future<models.Topic> createTopic({required String topicId, required String name}) async {
        final String apiPath = '/messaging/topics';

        final Map<String, dynamic> apiParams = {
            
            'topicId': topicId,
'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Topic.fromMap(res.data);

    }

    /// Get a topic.
    ///
    Future<models.Topic> getTopic({required String topicId}) async {
        final String apiPath = '/messaging/topics/{topicId}'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Topic.fromMap(res.data);

    }

    /// Update a topic.
    ///
    Future<models.Topic> updateTopic({required String topicId, String? name}) async {
        final String apiPath = '/messaging/topics/{topicId}'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Topic.fromMap(res.data);

    }

    /// Delete a topic.
    ///
    Future deleteTopic({required String topicId}) async {
        final String apiPath = '/messaging/topics/{topicId}'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// List topic logs
    ///
    Future<models.LogList> listTopicLogs({required String topicId, List<String>? queries}) async {
        final String apiPath = '/messaging/topics/{topicId}/logs'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

    }

    /// List subscribers.
    ///
    Future<models.SubscriberList> listSubscribers({required String topicId, List<String>? queries, String? search}) async {
        final String apiPath = '/messaging/topics/{topicId}/subscribers'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.SubscriberList.fromMap(res.data);

    }

    /// Create a subscriber.
    ///
    Future<models.Subscriber> createSubscriber({required String topicId, required String subscriberId, required String targetId}) async {
        final String apiPath = '/messaging/topics/{topicId}/subscribers'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            
            'subscriberId': subscriberId,
'targetId': targetId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Subscriber.fromMap(res.data);

    }

    /// Get a subscriber.
    ///
    Future<models.Subscriber> getSubscriber({required String topicId, required String subscriberId}) async {
        final String apiPath = '/messaging/topics/{topicId}/subscribers/{subscriberId}'.replaceAll('{topicId}', topicId).replaceAll('{subscriberId}', subscriberId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Subscriber.fromMap(res.data);

    }

    /// Delete a subscriber.
    ///
    Future deleteSubscriber({required String topicId, required String subscriberId}) async {
        final String apiPath = '/messaging/topics/{topicId}/subscribers/{subscriberId}'.replaceAll('{topicId}', topicId).replaceAll('{subscriberId}', subscriberId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }
}