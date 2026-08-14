part of '../../models.dart';

/// AdditionalResource
class AdditionalResource implements Model {
    /// Resource name
    final String name;

    /// Resource unit
    final String unit;

    /// Price currency
    final String currency;

    /// Price
    final double price;

    /// Resource value
    final int value;

    /// Description on invoice
    final String invoiceDesc;

    AdditionalResource({
        required this.name,
        required this.unit,
        required this.currency,
        required this.price,
        required this.value,
        required this.invoiceDesc,
    });

    factory AdditionalResource.fromMap(Map<String, dynamic> map) {
        return AdditionalResource(
            name: map['name'].toString(),
            unit: map['unit'].toString(),
            currency: map['currency'].toString(),
            price: map['price'].toDouble(),
            value: map['value'],
            invoiceDesc: map['invoiceDesc'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "name": name,
            "unit": unit,
            "currency": currency,
            "price": price,
            "value": value,
            "invoiceDesc": invoiceDesc,
        };
    }
}
