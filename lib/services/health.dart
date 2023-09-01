part of dart_appwrite;

/// The Health service allows you to both validate and monitor your Appwrite
/// server&#039;s health.
class Health extends Service {
    Health(super.client);

    /// Get HTTP
    ///
    /// Check the Appwrite HTTP server is up and responsive.
    Future<models.HealthStatus> get() async {
        final String apiPath = '/health';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthStatus.fromMap(res.data);

    }

    /// Get Antivirus
    ///
    /// Check the Appwrite Antivirus server is up and connection is successful.
    Future<models.HealthAntivirus> getAntivirus() async {
        final String apiPath = '/health/anti-virus';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthAntivirus.fromMap(res.data);

    }

    /// Get Cache
    ///
    /// Check the Appwrite in-memory cache servers are up and connection is
    /// successful.
    Future<models.HealthStatus> getCache() async {
        final String apiPath = '/health/cache';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthStatus.fromMap(res.data);

    }

    /// Get DB
    ///
    /// Check the Appwrite database servers are up and connection is successful.
    Future<models.HealthStatus> getDB() async {
        final String apiPath = '/health/db';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthStatus.fromMap(res.data);

    }

    /// Get PubSub
    ///
    /// Check the Appwrite pub-sub servers are up and connection is successful.
    Future<models.HealthStatus> getPubSub() async {
        final String apiPath = '/health/pubsub';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthStatus.fromMap(res.data);

    }

    /// Get Queue
    ///
    /// Check the Appwrite queue messaging servers are up and connection is
    /// successful.
    Future<models.HealthStatus> getQueue() async {
        final String apiPath = '/health/queue';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthStatus.fromMap(res.data);

    }

    /// Get Certificates Queue
    ///
    /// Get the number of certificates that are waiting to be issued against
    /// [Letsencrypt](https://letsencrypt.org/) in the Appwrite internal queue
    /// server.
    Future<models.HealthQueue> getQueueCertificates() async {
        final String apiPath = '/health/queue/certificates';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthQueue.fromMap(res.data);

    }

    /// Get Functions Queue
    ///
    Future<models.HealthQueue> getQueueFunctions() async {
        final String apiPath = '/health/queue/functions';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthQueue.fromMap(res.data);

    }

    /// Get Logs Queue
    ///
    /// Get the number of logs that are waiting to be processed in the Appwrite
    /// internal queue server.
    Future<models.HealthQueue> getQueueLogs() async {
        final String apiPath = '/health/queue/logs';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthQueue.fromMap(res.data);

    }

    /// Get Webhooks Queue
    ///
    /// Get the number of webhooks that are waiting to be processed in the Appwrite
    /// internal queue server.
    Future<models.HealthQueue> getQueueWebhooks() async {
        final String apiPath = '/health/queue/webhooks';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthQueue.fromMap(res.data);

    }

    /// Get Local Storage
    ///
    /// Check the Appwrite local storage device is up and connection is successful.
    Future<models.HealthStatus> getStorageLocal() async {
        final String apiPath = '/health/storage/local';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthStatus.fromMap(res.data);

    }

    /// Get Time
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

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.HealthTime.fromMap(res.data);

    }
}