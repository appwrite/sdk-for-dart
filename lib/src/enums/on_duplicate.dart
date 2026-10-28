part of '../../enums.dart';

enum OnDuplicate {
  fail(value: "fail"),
  skip(value: "skip"),
  overwrite(value: "overwrite");

  const OnDuplicate({required this.value});

  final String value;

  String toJson() => value;
}
