part of '../../enums.dart';

enum DatabaseStatus {
    provisioning(value: 'provisioning'),
    ready(value: 'ready'),
    inactive(value: 'inactive'),
    paused(value: 'paused'),
    failed(value: 'failed'),
    deleting(value: 'deleting'),
    deleted(value: 'deleted'),
    restoring(value: 'restoring'),
    scaling(value: 'scaling'),
    upgrading(value: 'upgrading'),
    migrating(value: 'migrating'),
    pausing(value: 'pausing'),
    resuming(value: 'resuming'),
    failingOver(value: 'failing-over');

    const DatabaseStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}