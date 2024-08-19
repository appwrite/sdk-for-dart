part of '../dart_appwrite.dart';

/// The Health service allows you to both validate and monitor your Appwrite
/// server&#039;s health.
class Health extends Service {
  Health(super.client);

  /// Get HTTP
  ///
  /// Check the Appwrite HTTP server is up and responsive.
  Future<models.HealthStatus> get() async {
    final String apiPath = '/health';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthStatus.fromMap(res.data);
  }

  /// Get antivirus
  ///
  /// Check the Appwrite Antivirus server is up and connection is successful.
  Future<models.HealthAntivirus> getAntivirus() async {
    final String apiPath = '/health/anti-virus';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthAntivirus.fromMap(res.data);
  }

  /// Get cache
  ///
  /// Check the Appwrite in-memory cache servers are up and connection is
  /// successful.
  Future<models.HealthStatus> getCache() async {
    final String apiPath = '/health/cache';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthStatus.fromMap(res.data);
  }

  /// Get the SSL certificate for a domain
  ///
  /// Get the SSL certificate for a domain
  Future<models.HealthCertificate> getCertificate({String? domain}) async {
    final String apiPath = '/health/certificate';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthCertificate.fromMap(res.data);
  }

  /// Get DB
  ///
  /// Check the Appwrite database servers are up and connection is successful.
  Future<models.HealthStatus> getDB() async {
    final String apiPath = '/health/db';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthStatus.fromMap(res.data);
  }

  /// Get pubsub
  ///
  /// Check the Appwrite pub-sub servers are up and connection is successful.
  Future<models.HealthStatus> getPubSub() async {
    final String apiPath = '/health/pubsub';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthStatus.fromMap(res.data);
  }

  /// Get queue
  ///
  /// Check the Appwrite queue messaging servers are up and connection is
  /// successful.
  Future<models.HealthStatus> getQueue() async {
    final String apiPath = '/health/queue';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthStatus.fromMap(res.data);
  }

  /// Get builds queue
  ///
  /// Get the number of builds that are waiting to be processed in the Appwrite
  /// internal queue server.
  Future<models.HealthQueue> getQueueBuilds({int? threshold}) async {
    final String apiPath = '/health/queue/builds';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get certificates queue
  ///
  /// Get the number of certificates that are waiting to be issued against
  /// [Letsencrypt](https://letsencrypt.org/) in the Appwrite internal queue
  /// server.
  Future<models.HealthQueue> getQueueCertificates({int? threshold}) async {
    final String apiPath = '/health/queue/certificates';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get databases queue
  ///
  /// Get the number of database changes that are waiting to be processed in the
  /// Appwrite internal queue server.
  Future<models.HealthQueue> getQueueDatabases(
      {String? name, int? threshold}) async {
    final String apiPath = '/health/queue/databases';

    final Map<String, dynamic> apiParams = {
      'name': name,
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get deletes queue
  ///
  /// Get the number of background destructive changes that are waiting to be
  /// processed in the Appwrite internal queue server.
  Future<models.HealthQueue> getQueueDeletes({int? threshold}) async {
    final String apiPath = '/health/queue/deletes';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get number of failed queue jobs
  ///
  /// Returns the amount of failed jobs in a given queue.
  ///
  Future<models.HealthQueue> getFailedJobs(
      {required enums.Name name, int? threshold}) async {
    final String apiPath =
        '/health/queue/failed/{name}'.replaceAll('{name}', name.value);

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get functions queue
  ///
  /// Get the number of function executions that are waiting to be processed in
  /// the Appwrite internal queue server.
  Future<models.HealthQueue> getQueueFunctions({int? threshold}) async {
    final String apiPath = '/health/queue/functions';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get logs queue
  ///
  /// Get the number of logs that are waiting to be processed in the Appwrite
  /// internal queue server.
  Future<models.HealthQueue> getQueueLogs({int? threshold}) async {
    final String apiPath = '/health/queue/logs';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get mails queue
  ///
  /// Get the number of mails that are waiting to be processed in the Appwrite
  /// internal queue server.
  Future<models.HealthQueue> getQueueMails({int? threshold}) async {
    final String apiPath = '/health/queue/mails';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get messaging queue
  ///
  /// Get the number of messages that are waiting to be processed in the Appwrite
  /// internal queue server.
  Future<models.HealthQueue> getQueueMessaging({int? threshold}) async {
    final String apiPath = '/health/queue/messaging';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get migrations queue
  ///
  /// Get the number of migrations that are waiting to be processed in the
  /// Appwrite internal queue server.
  Future<models.HealthQueue> getQueueMigrations({int? threshold}) async {
    final String apiPath = '/health/queue/migrations';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get usage queue
  ///
  /// Get the number of metrics that are waiting to be processed in the Appwrite
  /// internal queue server.
  Future<models.HealthQueue> getQueueUsage({int? threshold}) async {
    final String apiPath = '/health/queue/usage';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get usage dump queue
  ///
  /// Get the number of projects containing metrics that are waiting to be
  /// processed in the Appwrite internal queue server.
  Future<models.HealthQueue> getQueueUsageDump({int? threshold}) async {
    final String apiPath = '/health/queue/usage-dump';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get webhooks queue
  ///
  /// Get the number of webhooks that are waiting to be processed in the Appwrite
  /// internal queue server.
  Future<models.HealthQueue> getQueueWebhooks({int? threshold}) async {
    final String apiPath = '/health/queue/webhooks';

    final Map<String, dynamic> apiParams = {
      'threshold': threshold,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthQueue.fromMap(res.data);
  }

  /// Get storage
  ///
  /// Check the Appwrite storage device is up and connection is successful.
  Future<models.HealthStatus> getStorage() async {
    final String apiPath = '/health/storage';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthStatus.fromMap(res.data);
  }

  /// Get local storage
  ///
  /// Check the Appwrite local storage device is up and connection is successful.
  Future<models.HealthStatus> getStorageLocal() async {
    final String apiPath = '/health/storage/local';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthStatus.fromMap(res.data);
  }

  /// Get time
  ///
  /// Check the Appwrite server time is synced with Google remote NTP server. We
  /// use this technology to smoothly handle leap seconds with no disruptive
  /// events. The [Network Time
  /// Protocol](https://en.wikipedia.org/wiki/Network_Time_Protocol) (NTP) is
  /// used by hundreds of millions of computers and devices to synchronize their
  /// clocks over the Internet. If your computer sets its own clock, it likely
  /// uses NTP.
  Future<models.HealthTime> getTime() async {
    final String apiPath = '/health/time';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthTime.fromMap(res.data);
  }
}
