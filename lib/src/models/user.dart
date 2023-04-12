part of dart_appwrite.models;

/// User
class User implements Model {
    /// User ID.
    final String $id;
    /// User creation date in ISO 8601 format.
    final String $createdAt;
    /// User update date in ISO 8601 format.
    final String $updatedAt;
    /// User name.
    final String name;
    /// Hashed user password.
    final String? password;
    /// Password hashing algorithm.
    final String? hash;
    /// Password hashing algorithm configuration.
    final Map? hashOptions;
    /// User registration date in ISO 8601 format.
    final String registration;
    /// User status. Pass `true` for enabled and `false` for disabled.
    final bool status;
    /// Password update time in ISO 8601 format.
    final String passwordUpdate;
    /// User email address.
    final String email;
    /// User phone number in E.164 format.
    final String phone;
    /// Email verification status.
    final bool emailVerification;
    /// Phone verification status.
    final bool phoneVerification;
    /// User preferences as a key-value object
    final Preferences prefs;

    User({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.name,
        this.password,
        this.hash,
        this.hashOptions,
        required this.registration,
        required this.status,
        required this.passwordUpdate,
        required this.email,
        required this.phone,
        required this.emailVerification,
        required this.phoneVerification,
        required this.prefs,
    });

    factory User.fromMap(Map<String, dynamic> map) {
        return User(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            name: map['name'].toString(),
            password: map['password']?.toString(),
            hash: map['hash']?.toString(),
            hashOptions: map['hashOptions'],
            registration: map['registration'].toString(),
            status: map['status'],
            passwordUpdate: map['passwordUpdate'].toString(),
            email: map['email'].toString(),
            phone: map['phone'].toString(),
            emailVerification: map['emailVerification'],
            phoneVerification: map['phoneVerification'],
            prefs: Preferences.fromMap(map['prefs']),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "name": name,
            "password": password,
            "hash": hash,
            "hashOptions": hashOptions,
            "registration": registration,
            "status": status,
            "passwordUpdate": passwordUpdate,
            "email": email,
            "phone": phone,
            "emailVerification": emailVerification,
            "phoneVerification": phoneVerification,
            "prefs": prefs.toMap(),
        };
    }
}
