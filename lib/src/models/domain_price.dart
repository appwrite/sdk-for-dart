part of '../../models.dart';

/// DomainPrice
class DomainPrice implements Model {
  /// Domain name.
  final String domain;

  /// Top-level domain for the requested domain.
  final String tld;

  /// Whether the domain is currently available for registration.
  final bool available;

  /// Domain registration price. Null when the price could not be resolved, for example for an unsupported TLD.
  final double? price;

  /// Price period in years.
  final int periodYears;

  /// Whether the domain is a premium domain.
  final bool premium;

  /// Domain renewal price for the same period. Null when the domain was not priced or the registrar has no renewal price for it.
  final double? renewalPrice;

  /// Renewal price period in years.
  final int renewalPeriodYears;

  DomainPrice({
    required this.domain,
    required this.tld,
    required this.available,
    this.price,
    required this.periodYears,
    required this.premium,
    this.renewalPrice,
    required this.renewalPeriodYears,
  });
  factory DomainPrice.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'domain': "",
      'tld': "",
      'available': false,
      'periodYears': 1,
      'premium': false,
      'renewalPeriodYears': 1,
      ...map,
    };

    return DomainPrice(
      domain: map['domain'].toString(),
      tld: map['tld'].toString(),
      available: map['available'],
      price: map['price']?.toDouble(),
      periodYears: map['periodYears'],
      premium: map['premium'],
      renewalPrice: map['renewalPrice']?.toDouble(),
      renewalPeriodYears: map['renewalPeriodYears'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "domain": domain,
      "tld": tld,
      "available": available,
      "price": price,
      "periodYears": periodYears,
      "premium": premium,
      "renewalPrice": renewalPrice,
      "renewalPeriodYears": renewalPeriodYears,
    };
  }
}
