part of '../../models.dart';

/// Files List
class FileList<T> implements Model {
    /// Total number of files documents that matched your query.
    final int total;

    /// List of files.
    final List<File<T>> files;

    FileList({
        required this.total,
        required this.files,
    });

    factory FileList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return FileList(
            total: 
map['total'],
            files: 
List<File<T>>.from(map['files'].map((p) => File.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "files": files.map((p) => p.toMap()).toList(),
        };
    }

}
