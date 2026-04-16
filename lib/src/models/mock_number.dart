part of '../../models.dart';

/// Mock Number
class MockNumber implements Model {
  /// Mock phone number for testing phone authentication. Useful for testing phone authentication without sending an SMS.
  final String phone;

  /// Mock OTP for the number.
  final String otp;

  MockNumber({
    required this.phone,
    required this.otp,
  });

  factory MockNumber.fromMap(Map<String, dynamic> map) {
    return MockNumber(
      phone: map['phone'].toString(),
      otp: map['otp'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "phone": phone,
      "otp": otp,
    };
  }
}
