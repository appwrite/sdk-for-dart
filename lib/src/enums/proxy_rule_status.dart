part of '../../enums.dart';

enum ProxyRuleStatus {
  unverified(value: 'unverified'),
  verifying(value: 'verifying'),
  verified(value: 'verified');

  const ProxyRuleStatus({required this.value});

  final String value;

  String toJson() => value;
}
