part of '../dart_appwrite.dart';

class Domains extends Service {
  Domains(super.client);

  /// List all domains registered for this project. This endpoint supports
  /// pagination.
  Future<models.DomainsList> list({
    List<String>? queries,
    String? search,
    bool? total,
  }) async {
    final String apiPath = '/domains';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DomainsList.fromMap(res.data);
  }

  /// Create a new domain. Before creating a domain, you need to ensure that your
  /// DNS provider is properly configured. After creating the domain, you can use
  /// the verification endpoint to check if the domain is ready to be used.
  Future<models.Domain> create({
    required String teamId,
    required String domain,
  }) async {
    final String apiPath = '/domains';

    final Map<String, dynamic> apiParams = {
      'teamId': teamId,
      'domain': domain,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Domain.fromMap(res.data);
  }

  /// Get the registration price for a domain name.
  @Deprecated(
    'This API has been deprecated since 2.0.0. Please use `Domains.listPrices` instead.',
  )
  Future<models.DomainPrice> getPrice({
    required String domain,
    int? periodYears,
    enums.DomainRegistrationType? registrationType,
  }) async {
    final String apiPath = '/domains/price';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
      if (periodYears != null) 'periodYears': periodYears,
      if (registrationType != null) 'registrationType': registrationType?.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DomainPrice.fromMap(res.data);
  }

  /// Check availability and get the requested registration price for one or more
  /// domain names. Availability is resolved for all domains in a single
  /// registrar lookup. Unavailable domains have a null price for new
  /// registrations, but can still be priced for renewal, transfer, or trade.
  /// Every priced domain also carries its renewal price for the same period, so
  /// a separate renewal lookup is not needed. A domain whose price could not be
  /// resolved, for example because its TLD is not supported, is returned with a
  /// null price.
  Future<models.DomainPricesList> listPrices({
    required List<String> domains,
    int? periodYears,
    enums.DomainRegistrationType? registrationType,
  }) async {
    final String apiPath = '/domains/prices';

    final Map<String, dynamic> apiParams = {
      'domains': domains,
      if (periodYears != null) 'periodYears': periodYears,
      if (registrationType != null) 'registrationType': registrationType?.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DomainPricesList.fromMap(res.data);
  }

  /// Get a domain by its unique ID.
  Future<models.Domain> get({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Domain.fromMap(res.data);
  }

  /// Delete a domain by its unique ID. This endpoint can be used to delete a
  /// domain from your project.
  /// Once deleted, the domain will no longer be available for use and all
  /// associated resources will be removed.
  Future delete({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Update the registrar nameservers for the given domain. When nameservers are
  /// not provided,
  /// the domain will be updated to use Appwrite nameservers.
  Future<models.Domain> updateNameservers({
    required String domainId,
    List<String>? nameservers,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/nameservers'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      if (nameservers != null) 'nameservers': nameservers,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Domain.fromMap(res.data);
  }

  /// Verify which NS records are used and update the domain accordingly. This
  /// will check the domain's
  /// nameservers and update the domain's status based on whether the nameservers
  /// match the expected
  /// Appwrite nameservers.
  Future<models.Domain> verifyNameservers({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath =
        '/domains/{domainId}/nameservers/verification'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Domain.fromMap(res.data);
  }

  /// List Google Workspace DNS records.
  Future<models.DnsRecordsList> getPresetGoogleWorkspace({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath =
        '/domains/{domainId}/presets/google-workspace'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// Add Google Workspace DNS records to the domain. This will create the
  /// required MX records
  /// for Google Workspace email hosting.
  Future<models.DnsRecordsList> createPresetGoogleWorkspace({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath =
        '/domains/{domainId}/presets/google-workspace'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// List iCloud DNS records.
  Future<models.DnsRecordsList> getPresetICloud({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/icloud'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// Add iCloud DNS records to the domain. This will create the required MX and
  /// SPF records
  /// for using iCloud email services with your domain.
  Future<models.DnsRecordsList> createPresetICloud({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/icloud'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// List Mailgun DNS records.
  Future<models.DnsRecordsList> getPresetMailgun({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/mailgun'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// Add Mailgun DNS records to the domain. This endpoint will create the
  /// required DNS records
  /// for Mailgun in the specified domain.
  Future<models.DnsRecordsList> createPresetMailgun({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/mailgun'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// List Outlook DNS records.
  Future<models.DnsRecordsList> getPresetOutlook({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/outlook'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// Add Outlook DNS records to the domain. This will create the required MX
  /// records
  /// for setting up Outlook email hosting for your domain.
  Future<models.DnsRecordsList> createPresetOutlook({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/outlook'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// List ProtonMail DNS records.
  Future<models.DnsRecordsList> getPresetProtonMail({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/proton-mail'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// Add ProtonMail DNS records to the domain. This will create the required MX
  /// records
  /// for using ProtonMail with your custom domain.
  Future<models.DnsRecordsList> createPresetProtonMail({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/proton-mail'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// List Zoho DNS records.
  Future<models.DnsRecordsList> getPresetZoho({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/zoho'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// Add Zoho Mail DNS records to the domain. This will create the required MX
  /// records
  /// for setting up Zoho Mail on your domain.
  Future<models.DnsRecordsList> createPresetZoho({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/presets/zoho'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// List DNS records for a given domain. You can use this endpoint to list all
  /// the DNS records
  /// associated with your domain.
  Future<models.DnsRecordsList> listRecords({
    required String domainId,
    List<String>? queries,
    bool? total,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecordsList.fromMap(res.data);
  }

  /// Create a new A record for the given domain. A records are used to point a
  /// domain name
  /// to an IPv4 address. The record value should be a valid IPv4 address.
  Future<models.DnsRecord> createRecordA({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/a'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing A record for the given domain. This endpoint allows you
  /// to modify
  /// the properties of an A record including its name (subdomain), IPv4 address,
  /// TTL,
  /// and optional comment.
  Future<models.DnsRecord> updateRecordA({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/a/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new AAAA record for the given domain. This endpoint allows you to
  /// add a new IPv6 DNS record
  /// to your domain. The record will be used to point a hostname to an IPv6
  /// address.
  Future<models.DnsRecord> createRecordAAAA({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/aaaa'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing AAAA record for the given domain. This endpoint allows
  /// you to modify
  /// the properties of an existing AAAA record, including its name (subdomain),
  /// IPv6 address,
  /// TTL, and optional comment.
  Future<models.DnsRecord> updateRecordAAAA({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/aaaa/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new ALIAS record for the given domain. This record type can be
  /// used to point your domain
  /// to another domain name that will serve as an alias. This is particularly
  /// useful when you want to
  /// map your domain to a target domain that may change its IP address.
  Future<models.DnsRecord> createRecordAlias({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/alias'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing ALIAS record for the specified domain. This endpoint
  /// allows you to modify
  /// the properties of an existing ALIAS record including its name, target
  /// domain, TTL, and comment.
  ///
  /// The ALIAS record type is similar to a CNAME record but can be used at the
  /// zone apex (root domain).
  /// It provides a way to map one domain name to another.
  Future<models.DnsRecord> updateRecordAlias({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/alias/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new CAA record for the given domain. CAA records are used to
  /// specify which
  /// Certificate Authorities (CAs) are allowed to issue SSL/TLS certificates for
  /// your domain.
  Future<models.DnsRecord> createRecordCAA({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/caa'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing CAA record for the given domain. A CAA (Certification
  /// Authority Authorization)
  /// record is used to specify which certificate authorities (CAs) are
  /// authorized to issue certificates
  /// for a domain.
  Future<models.DnsRecord> updateRecordCAA({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/caa/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new CNAME record for the given domain.
  ///
  /// A CNAME record maps a subdomain to another domain name, allowing you to
  /// create aliases
  /// for your domain. For example, you can create a CNAME record to point
  /// 'blog.example.com'
  /// to 'example.wordpress.com'.
  Future<models.DnsRecord> createRecordCNAME({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/cname'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing CNAME record for the given domain.
  Future<models.DnsRecord> updateRecordCNAME({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/cname/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new HTTPS record for the given domain. This record is used to
  /// configure HTTPS
  /// settings for your domain, enabling secure communication over SSL/TLS.
  Future<models.DnsRecord> createRecordHTTPS({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/https'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing HTTPS record for the given domain. This endpoint allows
  /// you to modify
  /// the properties of an HTTPS record associated with your domain, including
  /// the name (subdomain),
  /// target value, TTL, and optional comment.
  Future<models.DnsRecord> updateRecordHTTPS({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/https/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new MX record for the given domain. MX records are used to define
  /// the mail servers responsible
  /// for accepting email messages for the domain. Multiple MX records can be
  /// created with different priorities.
  /// The priority parameter determines the order in which mail servers are used,
  /// with lower values indicating
  /// higher priority.
  Future<models.DnsRecord> createRecordMX({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    required int priority,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/mx'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      'priority': priority,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing MX record for the given domain.
  Future<models.DnsRecord> updateRecordMX({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    required int priority,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/mx/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      'priority': priority,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new NS record for the given domain. NS records specify the
  /// nameservers that are used
  /// to resolve the domain name to IP addresses. Each domain can have multiple
  /// NS records.
  Future<models.DnsRecord> createRecordNS({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/ns'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing NS record for the given domain. This endpoint allows you
  /// to modify
  /// the properties of an NS (nameserver) record associated with your domain.
  /// You can update
  /// the record name (subdomain), target nameserver value, TTL, and add or
  /// modify comments
  /// for better record management.
  Future<models.DnsRecord> updateRecordNS({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/ns/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new SRV record for the given domain. SRV records are used to
  /// define the location
  /// of servers for specific services. For example, they can be used to specify
  /// which server
  /// handles a specific service like SIP or XMPP for the domain.
  Future<models.DnsRecord> createRecordSRV({
    required String domainId,
    required String name,
    required String value,
    required int ttl,
    required int priority,
    required int weight,
    required int port,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/srv'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      'priority': priority,
      'weight': weight,
      'port': port,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing SRV record for the given domain.
  ///
  /// Required parameters:
  /// - domainId: Domain unique ID
  /// - recordId: DNS record unique ID
  /// - name: Record name (service name)
  /// - value: Target hostname for this SRV record
  /// - ttl: Time to live, in seconds
  /// - priority: Record priority
  /// - weight: Record weight
  /// - port: Port number for the service
  ///
  /// Optional parameters:
  /// - comment: A comment for this record
  Future<models.DnsRecord> updateRecordSRV({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    required int priority,
    required int weight,
    required int port,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/srv/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      'priority': priority,
      'weight': weight,
      'port': port,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Create a new TXT record for the given domain. TXT records can be used
  /// to provide additional information about your domain, such as domain
  /// verification records, SPF records, or DKIM records.
  Future<models.DnsRecord> createRecordTXT({
    required String domainId,
    required String name,
    required int ttl,
    String? value,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/txt'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'name': name,
      if (value != null) 'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Update an existing TXT record for the given domain.
  ///
  /// Update the TXT record details for a specific domain by providing the domain
  /// ID,
  /// record ID, and the new record configuration including name, value, TTL, and
  /// an optional comment.
  Future<models.DnsRecord> updateRecordTXT({
    required String domainId,
    required String recordId,
    required String name,
    required String value,
    required int ttl,
    String? comment,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/txt/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {
      'name': name,
      'value': value,
      'ttl': ttl,
      if (comment != null) 'comment': comment,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Get a single DNS record for a given domain by record ID.
  ///
  /// This endpoint allows you to retrieve a specific DNS record associated with
  /// a domain
  /// using its unique identifier. The record contains information about the DNS
  /// configuration
  /// such as type, value, and TTL settings.
  Future<models.DnsRecord> getRecord({
    required String domainId,
    required String recordId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DnsRecord.fromMap(res.data);
  }

  /// Delete a DNS record for the given domain. This endpoint allows you to
  /// delete an existing DNS record
  /// from a specific domain.
  Future deleteRecord({
    required String domainId,
    required String recordId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    if (recordId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "recordId"',
      );
    }

    final String apiPath = '/domains/{domainId}/records/{recordId}'
        .replaceAll(
          '{domainId}',
          _encodePath(domainId),
        )
        .replaceAll(
          '{recordId}',
          _encodePath(recordId),
        );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Update the team ID for a specific domain. The caller must administer the
  /// current
  /// team and be an owner of the destination team.
  ///
  /// Updating the team ID will transfer ownership and access control of the
  /// domain
  /// and all its DNS records to the new team.
  Future<models.Domain> updateTeam({
    required String domainId,
    required String teamId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/team'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'teamId': teamId,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Domain.fromMap(res.data);
  }

  /// Retrieve the current transfer status for a domain. Returns the status, an
  /// optional reason, and a timestamp of the last status change.
  Future<models.DomainTransferStatus> getTransferStatus({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/transfers/status'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DomainTransferStatus.fromMap(res.data);
  }

  /// Retrieve the DNS zone file for the given domain. This endpoint will return
  /// the DNS
  /// zone file in a standardized format that can be used to configure DNS
  /// servers.
  Future<String> getZone({
    required String domainId,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/zone'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'text/plain',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
      responseType: ResponseType.plain,
    );

    return res.data;
  }

  /// Update the DNS zone for the given domain using the provided zone file
  /// content.
  /// All parsed records the domain does not already have are imported and then
  /// the main domain document is returned.
  Future<models.Domain> updateZone({
    required String domainId,
    required String content,
  }) async {
    if (domainId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "domainId"',
      );
    }

    final String apiPath = '/domains/{domainId}/zone'.replaceAll(
      '{domainId}',
      _encodePath(domainId),
    );

    final Map<String, dynamic> apiParams = {
      'content': content,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.Domain.fromMap(res.data);
  }
}
