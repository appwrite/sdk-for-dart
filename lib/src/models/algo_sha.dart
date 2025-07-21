part of '../../models.dart';

/// AlgoSHA
class AlgoSha<T> implements Model {
  /// Algo type.
  final String type;

  AlgoSha({required this.type});

  factory AlgoSha.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return AlgoSha(type: map['type'].toString());
  }

  Map<String, dynamic> toMap() {
    return {"type": type};
  }
}
