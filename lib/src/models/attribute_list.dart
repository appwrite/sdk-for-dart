part of '../../models.dart';

/// Attributes List
class AttributeList<T> implements Model {
  /// Total number of attributes in the given collection.
  final int total;

  /// List of attributes.
  final List attributes;

  AttributeList({required this.total, required this.attributes});

  factory AttributeList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return AttributeList(
      total: map['total'],
      attributes: List.from(map['attributes'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {"total": total, "attributes": attributes};
  }
}
