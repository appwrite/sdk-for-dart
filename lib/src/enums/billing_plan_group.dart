part of '../../enums.dart';

enum BillingPlanGroup {
  free(value: "free"),
  start(value: "start"),
  pro(value: "pro"),
  scale(value: "scale");

  const BillingPlanGroup({required this.value});

  final String value;

  String toJson() => value;
}
