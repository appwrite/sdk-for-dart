part of '../../enums.dart';

enum MonitorResult {
  ok(value: "ok"),
  dnsFailed(value: "dns_failed"),
  connectRefused(value: "connect_refused"),
  connectTimeout(value: "connect_timeout"),
  connectFailed(value: "connect_failed"),
  tlsFailed(value: "tls_failed"),
  tlsExpiring(value: "tls_expiring"),
  statusMismatch(value: "status_mismatch"),
  answerMismatch(value: "answer_mismatch"),
  smtpRejected(value: "smtp_rejected"),
  targetDenied(value: "target_denied"),
  timeout(value: "timeout"),
  ruleMatched(value: "rule_matched");

  const MonitorResult({required this.value});

  final String value;

  String toJson() => value;
}
