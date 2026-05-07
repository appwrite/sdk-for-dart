part of '../../models.dart';

/// Mock Number
class MockNumber implements Model {
    /// Mock phone number for testing phone authentication. Useful for testing phone authentication without sending an SMS.
    final String number;

    /// Mock OTP for the number. 
    final String otp;

    /// Attribute creation date in ISO 8601 format.
    final String $createdAt;

    /// Attribute update date in ISO 8601 format.
    final String $updatedAt;

    MockNumber({
        required this.number,
        required this.otp,
        required this.$createdAt,
        required this.$updatedAt,
    });

    factory MockNumber.fromMap(Map<String, dynamic> map) {
        return MockNumber(
            number: map['number'].toString(),
            otp: map['otp'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "number": number,
            "otp": otp,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
        };
    }
}
