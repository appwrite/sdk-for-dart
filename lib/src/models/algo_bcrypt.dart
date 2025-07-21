part of '../../models.dart';

/// AlgoBcrypt
class AlgoBcrypt<T> implements Model {
  /// Algo type.
  final String type;

  AlgoBcrypt({required this.type});

  factory AlgoBcrypt.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return AlgoBcrypt(type: map['type'].toString());
  }

  Map<String, dynamic> toMap() {
    return {"type": type};
  }
}
