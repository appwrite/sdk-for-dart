part of '../../models.dart';

/// Languages List
class LanguageList<T> implements Model {
  /// Total number of languages documents that matched your query.
  final int total;

  /// List of languages.
  final List<Language<T>> languages;

  LanguageList({required this.total, required this.languages});

  factory LanguageList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return LanguageList(
      total: map['total'],
      languages: List<Language<T>>.from(
        map['languages'].map((p) => Language.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "languages": languages.map((p) => p.toMap()).toList(),
    };
  }
}
