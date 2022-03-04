part of dart_appwrite;

     /// The Health service allows you to both validate and monitor your Appwrite
     /// server's health.
class Health extends Service {
    Health(Client client): super(client);

     /// Get HTTP
     ///
     /// Check the Appwrite HTTP server is up and responsive.
     ///
     Future<models.HealthStatus> get() async {
        final String path = '/health';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthStatus.fromMap(res.data);
    }

     /// Get Antivirus
     ///
     /// Check the Appwrite Antivirus server is up and connection is successful.
     ///
     Future<models.HealthAntivirus> getAntivirus() async {
        final String path = '/health/anti-virus';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthAntivirus.fromMap(res.data);
    }

     /// Get Cache
     ///
     /// Check the Appwrite in-memory cache server is up and connection is
     /// successful.
     ///
     Future<models.HealthStatus> getCache() async {
        final String path = '/health/cache';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthStatus.fromMap(res.data);
    }

     /// Get DB
     ///
     /// Check the Appwrite database server is up and connection is successful.
     ///
     Future<models.HealthStatus> getDB() async {
        final String path = '/health/db';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthStatus.fromMap(res.data);
    }

     /// Get Certificates Queue
     ///
     /// Get the number of certificates that are waiting to be issued against
     /// [Letsencrypt](https://letsencrypt.org/) in the Appwrite internal queue
     /// server.
     ///
     Future<models.HealthQueue> getQueueCertificates() async {
        final String path = '/health/queue/certificates';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthQueue.fromMap(res.data);
    }

     /// Get Functions Queue
     Future<models.HealthQueue> getQueueFunctions() async {
        final String path = '/health/queue/functions';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthQueue.fromMap(res.data);
    }

     /// Get Logs Queue
     ///
     /// Get the number of logs that are waiting to be processed in the Appwrite
     /// internal queue server.
     ///
     Future<models.HealthQueue> getQueueLogs() async {
        final String path = '/health/queue/logs';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthQueue.fromMap(res.data);
    }

     /// Get Usage Queue
     ///
     /// Get the number of usage stats that are waiting to be processed in the
     /// Appwrite internal queue server.
     ///
     Future<models.HealthQueue> getQueueUsage() async {
        final String path = '/health/queue/usage';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthQueue.fromMap(res.data);
    }

     /// Get Webhooks Queue
     ///
     /// Get the number of webhooks that are waiting to be processed in the Appwrite
     /// internal queue server.
     ///
     Future<models.HealthQueue> getQueueWebhooks() async {
        final String path = '/health/queue/webhooks';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthQueue.fromMap(res.data);
    }

     /// Get Local Storage
     ///
     /// Check the Appwrite local storage device is up and connection is successful.
     ///
     Future<models.HealthStatus> getStorageLocal() async {
        final String path = '/health/storage/local';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
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
     ///
     Future<models.HealthTime> getTime() async {
        final String path = '/health/time';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };


        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.HealthTime.fromMap(res.data);
    }
}