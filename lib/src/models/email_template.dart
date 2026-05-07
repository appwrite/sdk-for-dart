part of '../../models.dart';

/// EmailTemplate
class EmailTemplate implements Model {
  /// Template type
  final String templateId;

  /// Template locale
  final String locale;

  /// Template message
  final String message;

  /// Name of the sender
  final String senderName;

  /// Email of the sender
  final String senderEmail;

  /// Reply to email address
  final String replyToEmail;

  /// Reply to name
  final String replyToName;

  /// Email subject
  final String subject;

  EmailTemplate({
    required this.templateId,
    required this.locale,
    required this.message,
    required this.senderName,
    required this.senderEmail,
    required this.replyToEmail,
    required this.replyToName,
    required this.subject,
  });

  factory EmailTemplate.fromMap(Map<String, dynamic> map) {
    return EmailTemplate(
      templateId: map['templateId'].toString(),
      locale: map['locale'].toString(),
      message: map['message'].toString(),
      senderName: map['senderName'].toString(),
      senderEmail: map['senderEmail'].toString(),
      replyToEmail: map['replyToEmail'].toString(),
      replyToName: map['replyToName'].toString(),
      subject: map['subject'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "templateId": templateId,
      "locale": locale,
      "message": message,
      "senderName": senderName,
      "senderEmail": senderEmail,
      "replyToEmail": replyToEmail,
      "replyToName": replyToName,
      "subject": subject,
    };
  }
}
