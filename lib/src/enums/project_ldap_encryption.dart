part of '../../enums.dart';

enum ProjectLDAPEncryption {
  none(value: "none"),
  ldaps(value: "ldaps"),
  starttls(value: "starttls");

  const ProjectLDAPEncryption({required this.value});

  final String value;

  String toJson() => value;
}
