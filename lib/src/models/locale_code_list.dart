part of '../../models.dart';

/// Locale codes list
class LocaleCodeList<T> implements Model {
  /// Total number of localeCodes documents that matched your query.
  final int total;

  /// List of localeCodes.
  final List<LocaleCode<T>> localeCodes;

  LocaleCodeList({required this.total, required this.localeCodes});

  factory LocaleCodeList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return LocaleCodeList(
      total: map['total'],
      localeCodes: List<LocaleCode<T>>.from(
        map['localeCodes'].map((p) => LocaleCode.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "localeCodes": localeCodes.map((p) => p.toMap()).toList(),
    };
  }

  // Public getters for private underscore fields
}
