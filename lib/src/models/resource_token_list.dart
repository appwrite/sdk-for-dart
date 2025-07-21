part of '../../models.dart';

/// Resource Tokens List
class ResourceTokenList<T> implements Model {
    /// Total number of tokens documents that matched your query.
    final int total;

    /// List of tokens.
    final List<ResourceToken<T>> tokens;

    ResourceTokenList({
        required this.total,
        required this.tokens,
    });

    factory ResourceTokenList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return ResourceTokenList(
            total: 
map['total'],
            tokens: 
List<ResourceToken<T>>.from(map['tokens'].map((p) => ResourceToken.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "tokens": tokens.map((p) => p.toMap()).toList(),
        };
    }

}
