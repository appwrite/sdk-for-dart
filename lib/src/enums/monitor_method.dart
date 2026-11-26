part of '../../enums.dart';

enum MonitorMethod {
  gET(value: "GET"),
  hEAD(value: "HEAD"),
  pOST(value: "POST"),
  pUT(value: "PUT"),
  pATCH(value: "PATCH"),
  dELETE(value: "DELETE"),
  oPTIONS(value: "OPTIONS");

  const MonitorMethod({required this.value});

  final String value;

  String toJson() => value;
}
