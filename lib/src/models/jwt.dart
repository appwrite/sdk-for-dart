part of dart_appwrite.models;

/// JWT
class Jwt {
    /// JWT encoded string.
    final String jwt;

    Jwt({
        required this.jwt,
    });

    factory Jwt.fromMap(Map<String, dynamic> map) {
        return Jwt(
            jwt: map['jwt'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "jwt": jwt,
        };
    }
}
