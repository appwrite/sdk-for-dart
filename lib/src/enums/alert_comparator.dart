part of '../../enums.dart';

enum AlertComparator {
  greaterThan(value: "greaterThan"),
  greaterThanEqual(value: "greaterThanEqual"),
  lessThan(value: "lessThan"),
  lessThanEqual(value: "lessThanEqual");

  const AlertComparator({required this.value});

  final String value;

  String toJson() => value;
}
