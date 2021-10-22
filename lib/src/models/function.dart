part of dart_appwrite.models;

/// Function
class XFunction {
    /// Function ID.
    final String $id;
    /// Function permissions.
    final FuncPermissions $permissions;
    /// Function name.
    final String name;
    /// Function creation date in Unix timestamp.
    final int dateCreated;
    /// Function update date in Unix timestamp.
    final int dateUpdated;
    /// Function status. Possible values: disabled, enabled
    final String status;
    /// Function execution runtime.
    final String runtime;
    /// Function active tag ID.
    final String tag;
    /// Function environment variables.
    final String vars;
    /// Function trigger events.
    final List events;
    /// Function execution schedult in CRON format.
    final String schedule;
    /// Function next scheduled execution date in Unix timestamp.
    final int scheduleNext;
    /// Function next scheduled execution date in Unix timestamp.
    final int schedulePrevious;
    /// Function execution timeout in seconds.
    final int timeout;

    XFunction({
        required this.$id,
        required this.$permissions,
        required this.name,
        required this.dateCreated,
        required this.dateUpdated,
        required this.status,
        required this.runtime,
        required this.tag,
        required this.vars,
        required this.events,
        required this.schedule,
        required this.scheduleNext,
        required this.schedulePrevious,
        required this.timeout,
    });

    factory XFunction.fromMap(Map<String, dynamic> map) {
        return XFunction(
            $id: map['\$id'].toString(),
            $permissions: FuncPermissions.fromMap(map['\$permissions']),
            name: map['name'].toString(),
            dateCreated: map['dateCreated'],
            dateUpdated: map['dateUpdated'],
            status: map['status'].toString(),
            runtime: map['runtime'].toString(),
            tag: map['tag'].toString(),
            vars: map['vars'].toString(),
            events: map['events'],
            schedule: map['schedule'].toString(),
            scheduleNext: map['scheduleNext'],
            schedulePrevious: map['schedulePrevious'],
            timeout: map['timeout'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$permissions": $permissions.toMap(),
            "name": name,
            "dateCreated": dateCreated,
            "dateUpdated": dateUpdated,
            "status": status,
            "runtime": runtime,
            "tag": tag,
            "vars": vars,
            "events": events,
            "schedule": schedule,
            "scheduleNext": scheduleNext,
            "schedulePrevious": schedulePrevious,
            "timeout": timeout,
        };
    }
}
