part of '../../enums.dart';

enum DomainRegistrationType {
  xnew(value: "new"),
  transfer(value: "transfer"),
  renewal(value: "renewal"),
  trade(value: "trade");

  const DomainRegistrationType({required this.value});

  final String value;

  String toJson() => value;
}
