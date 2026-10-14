part of '../../enums.dart';

enum DomainTransferStatusEnum {
  transferrable(value: "transferrable"),
  notTransferrable(value: "not_transferrable"),
  pendingOwner(value: "pending_owner"),
  pendingAdmin(value: "pending_admin"),
  pendingRegistry(value: "pending_registry"),
  completed(value: "completed"),
  cancelled(value: "cancelled"),
  serviceUnavailable(value: "service_unavailable");

  const DomainTransferStatusEnum({required this.value});

  final String value;

  String toJson() => value;
}
