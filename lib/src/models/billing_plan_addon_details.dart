part of '../../models.dart';

/// Details
class BillingPlanAddonDetails implements Model {
    /// Is the addon supported in the plan?
    final bool supported;

    /// Addon plan included value
    final int planIncluded;

    /// Addon limit
    final int limit;

    /// Addon type
    final String type;

    /// Price currency
    final String currency;

    /// Price
    final double price;

    /// Resource value
    final int value;

    /// Description on invoice
    final String invoiceDesc;

    BillingPlanAddonDetails({
        required this.supported,
        required this.planIncluded,
        required this.limit,
        required this.type,
        required this.currency,
        required this.price,
        required this.value,
        required this.invoiceDesc,
    });

    factory BillingPlanAddonDetails.fromMap(Map<String, dynamic> map) {
        return BillingPlanAddonDetails(
            supported: map['supported'],
            planIncluded: map['planIncluded'],
            limit: map['limit'],
            type: map['type'].toString(),
            currency: map['currency'].toString(),
            price: map['price'].toDouble(),
            value: map['value'],
            invoiceDesc: map['invoiceDesc'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "supported": supported,
            "planIncluded": planIncluded,
            "limit": limit,
            "type": type,
            "currency": currency,
            "price": price,
            "value": value,
            "invoiceDesc": invoiceDesc,
        };
    }
}
