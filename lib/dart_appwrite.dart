/// Appwrite Dart SDK
///
/// This SDK targets Appwrite server version 2.0.x as shipped on Appwrite Cloud.
/// Self-hosted releases can lag behind Cloud — if you run an older self-hosted
/// build, use a matching older SDK from
/// [previous releases](https://github.com/appwrite/sdk-for-dart/releases)
/// when APIs differ.
library dart_appwrite;

import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:convert';

import 'src/enums.dart';
import 'src/service.dart';
import 'src/input_file.dart';
import 'src/upload_progress.dart';
import 'models.dart' as models;
import 'enums.dart' as enums;

export 'src/response.dart';
export 'src/client.dart';
export 'src/exception.dart';
export 'src/input_file.dart';
export 'src/upload_progress.dart';

part 'query.dart';
part 'permission.dart';
part 'role.dart';
part 'id.dart';
part 'operator.dart';
part 'services/account.dart';
part 'services/activities.dart';
part 'services/apps.dart';
part 'services/avatars.dart';
part 'services/backups.dart';
part 'services/databases.dart';
part 'services/documents_db.dart';
part 'services/embeddings.dart';
part 'services/functions.dart';
part 'services/graphql.dart';
part 'services/locale.dart';
part 'services/messaging.dart';
part 'services/mongo.dart';
part 'services/mysql.dart';
part 'services/oauth2.dart';
part 'services/organization.dart';
part 'services/postgresql.dart';
part 'services/presences.dart';
part 'services/project.dart';
part 'services/proxy.dart';
part 'services/advisor.dart';
part 'services/sites.dart';
part 'services/storage.dart';
part 'services/tables_db.dart';
part 'services/teams.dart';
part 'services/tokens.dart';
part 'services/users.dart';
part 'services/vectors_db.dart';
part 'services/webhooks.dart';
