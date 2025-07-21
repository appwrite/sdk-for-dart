part of '../../models.dart';

/// Language
class Language<T> implements Model {
    /// Language name.
    final String name;

    /// Language two-character ISO 639-1 codes.
    final String code;

    /// Language native name.
    final String nativeName;

    Language({
        required this.name,
        required this.code,
        required this.nativeName,
    });

    factory Language.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return Language(
            name: 
map['name'].toString(),
            code: 
map['code'].toString(),
            nativeName: 
map['nativeName'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "name": name,
            "code": code,
            "nativeName": nativeName,
        };
    }

    // Public getters for private underscore fields
}
