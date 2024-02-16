part of dart_appwrite.enums;

enum Name {
    v1Database(value: 'v1-database'),
    v1Deletes(value: 'v1-deletes'),
    v1Audits(value: 'v1-audits'),
    v1Mails(value: 'v1-mails'),
    v1Functions(value: 'v1-functions'),
    v1Usage(value: 'v1-usage'),
    webhooksv1(value: 'webhooksv1'),
    v1Certificates(value: 'v1-certificates'),
    v1Builds(value: 'v1-builds'),
    v1Messaging(value: 'v1-messaging'),
    v1Migrations(value: 'v1-migrations'),
    hamsterv1(value: 'hamsterv1');

    const Name({
        required this.value
    });

    final String value;

    String toJson() => value;
}