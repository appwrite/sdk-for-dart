part of '../../enums.dart';

enum OrganizationKeyScopes {
  projectsRead(value: 'projects.read'),
  projectsWrite(value: 'projects.write'),
  devKeysRead(value: 'devKeys.read'),
  devKeysWrite(value: 'devKeys.write'),
  organizationKeysRead(value: 'organization.keys.read'),
  organizationKeysWrite(value: 'organization.keys.write'),
  organizationMembershipsRead(value: 'organization.memberships.read'),
  organizationMembershipsWrite(value: 'organization.memberships.write'),
  organizationRead(value: 'organization.read'),
  organizationWrite(value: 'organization.write'),
  domainsRead(value: 'domains.read'),
  domainsWrite(value: 'domains.write'),
  keysRead(value: 'keys.read'),
  keysWrite(value: 'keys.write');

  const OrganizationKeyScopes({required this.value});

  final String value;

  String toJson() => value;
}
