part of '../../enums.dart';

enum BackupServices {
  databases(value: 'databases'),
  tablesdb(value: 'tablesdb'),
  documentsdb(value: 'documentsdb'),
  vectorsdb(value: 'vectorsdb'),
  functions(value: 'functions'),
  storage(value: 'storage');

  const BackupServices({required this.value});

  final String value;

  String toJson() => value;
}
