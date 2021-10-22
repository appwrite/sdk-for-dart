part of dart_appwrite.models;

/// FuncPermissions
class FuncPermissions {
    /// Execution permissions.
    final List execute;

    FuncPermissions({
        required this.execute,
    });

    factory FuncPermissions.fromMap(Map<String, dynamic> map) {
        return FuncPermissions(
            execute: map['execute'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "execute": execute,
        };
    }
}
