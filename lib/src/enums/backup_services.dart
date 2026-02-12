part of '../../enums.dart';

enum BackupServices {
    databases(value: 'databases'),
    functions(value: 'functions'),
    storage(value: 'storage');

    const BackupServices({
        required this.value
    });

    final String value;

    String toJson() => value;
}