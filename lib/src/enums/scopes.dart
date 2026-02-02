part of '../../enums.dart';

enum Scopes {
    sessionsWrite(value: 'sessions.write'),
    usersRead(value: 'users.read'),
    usersWrite(value: 'users.write'),
    teamsRead(value: 'teams.read'),
    teamsWrite(value: 'teams.write'),
    databasesRead(value: 'databases.read'),
    databasesWrite(value: 'databases.write'),
    collectionsRead(value: 'collections.read'),
    collectionsWrite(value: 'collections.write'),
    tablesRead(value: 'tables.read'),
    tablesWrite(value: 'tables.write'),
    attributesRead(value: 'attributes.read'),
    attributesWrite(value: 'attributes.write'),
    columnsRead(value: 'columns.read'),
    columnsWrite(value: 'columns.write'),
    indexesRead(value: 'indexes.read'),
    indexesWrite(value: 'indexes.write'),
    documentsRead(value: 'documents.read'),
    documentsWrite(value: 'documents.write'),
    rowsRead(value: 'rows.read'),
    rowsWrite(value: 'rows.write'),
    filesRead(value: 'files.read'),
    filesWrite(value: 'files.write'),
    bucketsRead(value: 'buckets.read'),
    bucketsWrite(value: 'buckets.write'),
    functionsRead(value: 'functions.read'),
    functionsWrite(value: 'functions.write'),
    sitesRead(value: 'sites.read'),
    sitesWrite(value: 'sites.write'),
    logRead(value: 'log.read'),
    logWrite(value: 'log.write'),
    executionRead(value: 'execution.read'),
    executionWrite(value: 'execution.write'),
    localeRead(value: 'locale.read'),
    avatarsRead(value: 'avatars.read'),
    healthRead(value: 'health.read'),
    providersRead(value: 'providers.read'),
    providersWrite(value: 'providers.write'),
    messagesRead(value: 'messages.read'),
    messagesWrite(value: 'messages.write'),
    topicsRead(value: 'topics.read'),
    topicsWrite(value: 'topics.write'),
    subscribersRead(value: 'subscribers.read'),
    subscribersWrite(value: 'subscribers.write'),
    targetsRead(value: 'targets.read'),
    targetsWrite(value: 'targets.write'),
    rulesRead(value: 'rules.read'),
    rulesWrite(value: 'rules.write'),
    migrationsRead(value: 'migrations.read'),
    migrationsWrite(value: 'migrations.write'),
    vcsRead(value: 'vcs.read'),
    vcsWrite(value: 'vcs.write'),
    assistantRead(value: 'assistant.read'),
    tokensRead(value: 'tokens.read'),
    tokensWrite(value: 'tokens.write');

    const Scopes({
        required this.value
    });

    final String value;

    String toJson() => value;
}