part of '../../models.dart';

/// Domain prices list
class DomainPricesList implements Model {
  /// Total number of prices that matched your query.
  final int total;

  /// List of prices.
  final List<DomainPrice> prices;

  DomainPricesList({
    required this.total,
    required this.prices,
  });
  factory DomainPricesList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'prices': [],
      ...map,
    };

    return DomainPricesList(
      total: map['total'],
      prices: List<DomainPrice>.from(
        map['prices'].map((p) => DomainPrice.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "prices": prices.map((p) => p.toMap()).toList(),
    };
  }
}
