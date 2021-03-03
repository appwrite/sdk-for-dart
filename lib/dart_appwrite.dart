library dart_appwrite;

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:dio/adapter.dart';


export 'package:dio/dio.dart' show Response, MultipartFile;

part 'client.dart';
part 'enums.dart';
part 'service.dart';
part 'exception.dart';
part 'services/avatars.dart';
part 'services/database.dart';
part 'services/functions.dart';
part 'services/health.dart';
part 'services/locale.dart';
part 'services/storage.dart';
part 'services/teams.dart';
part 'services/users.dart';
