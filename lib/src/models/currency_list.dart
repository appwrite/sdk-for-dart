part of '../../models.dart';

/// Currencies List
class CurrencyList<T> implements Model {
  /// Total number of currencies documents that matched your query.
  final int total;

  /// List of currencies.
  final List<Currency<T>> currencies;

  CurrencyList({required this.total, required this.currencies});

  factory CurrencyList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return CurrencyList(
      total: map['total'],
      currencies: List<Currency<T>>.from(
        map['currencies'].map((p) => Currency.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "currencies": currencies.map((p) => p.toMap()).toList(),
    };
  }

  // Public getters for private underscore fields
}
