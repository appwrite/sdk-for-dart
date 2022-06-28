part of dart_appwrite.models;

/// Function
class Func {
    /// Function ID.
    final String $id;
    /// Function creation date in Unix timestamp.
    final int $createdAt;
    /// Function update date in Unix timestamp.
    final int $updatedAt;
    /// Execution permissions.
    final List execute;
    /// Function name.
    final String name;
    /// Function status. Possible values: `disabled`, `enabled`
    final String status;
    /// Function execution runtime.
    final String runtime;
    /// Function&#039;s active deployment ID.
    final String deployment;
    /// Function environment variables.
    final Map<String, dynamic> vars;
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

    Func({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.execute,
        required this.name,
        required this.status,
        required this.runtime,
        required this.deployment,
        required this.vars,
        required this.events,
        required this.schedule,
        required this.scheduleNext,
        required this.schedulePrevious,
        required this.timeout,
    });

    factory Func.fromMap(Map<String, dynamic> map) {
        return Func(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'],
            $updatedAt: map['\$updatedAt'],
            execute: map['execute'],
            name: map['name'].toString(),
            status: map['status'].toString(),
            runtime: map['runtime'].toString(),
            deployment: map['deployment'].toString(),
            vars: map['vars'],
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
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "execute": execute,
            "name": name,
            "status": status,
            "runtime": runtime,
            "deployment": deployment,
            "vars": vars,
            "events": events,
            "schedule": schedule,
            "scheduleNext": scheduleNext,
            "schedulePrevious": schedulePrevious,
            "timeout": timeout,
        };
    }
}
