part of '../../models.dart';

/// Preferences
class Preferences<T> implements Model {
  final T data;

  Preferences({required this.data});

  factory Preferences.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return Preferences(data: fromJson != null ? fromJson(map) : map as T);
  }

  Map<String, dynamic> toMap() {
    return {"data": data};
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) =>
      fromJson(data as Map<String, dynamic>);

  // Public getters for private underscore fields
}
