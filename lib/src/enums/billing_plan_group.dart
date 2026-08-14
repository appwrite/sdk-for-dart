part of '../../enums.dart';

enum BillingPlanGroup {
    starter(value: 'starter'),
    pro(value: 'pro'),
    scale(value: 'scale');

    const BillingPlanGroup({
        required this.value
    });

    final String value;

    String toJson() => value;
}