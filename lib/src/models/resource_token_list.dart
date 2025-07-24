part of '../../models.dart';

/// Resource Tokens List
class ResourceTokenList implements Model {
  /// Total number of tokens documents that matched your query.
  final int total;

  /// List of tokens.
  final List<ResourceToken> tokens;

  ResourceTokenList({required this.total, required this.tokens});

  factory ResourceTokenList.fromMap(Map<String, dynamic> map) {
    return ResourceTokenList(
      total: map['total'],
      tokens: List<ResourceToken>.from(
        map['tokens'].map((p) => ResourceToken.fromMap(p)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {"total": total, "tokens": tokens.map((p) => p.toMap()).toList()};
  }
}
