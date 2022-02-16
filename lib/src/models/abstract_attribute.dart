part of dart_appwrite.models;

abstract class AbstractAttribute {
  /// Attribute Key.
  final String key;
  /// Attribute type.
  final String type;
  /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final String status;
  /// Is attribute required?
  final bool xrequired;
  /// Is attribute an array?
  final bool? array;

  Map<String,dynamic> toMap();

  AbstractAttribute({required this.key, required this.type, required this.status, required this.xrequired, required this.array});
}