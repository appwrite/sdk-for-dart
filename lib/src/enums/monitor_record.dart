part of '../../enums.dart';

enum MonitorRecord {
  a(value: "A"),
  aAAA(value: "AAAA"),
  cNAME(value: "CNAME"),
  mX(value: "MX"),
  tXT(value: "TXT"),
  nS(value: "NS");

  const MonitorRecord({required this.value});

  final String value;

  String toJson() => value;
}
