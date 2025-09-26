part of '../../enums.dart';

enum MessageStatus {
  draft(value: 'draft'),
  processing(value: 'processing'),
  scheduled(value: 'scheduled'),
  sent(value: 'sent'),
  failed(value: 'failed');

  const MessageStatus({required this.value});

  final String value;

  String toJson() => value;
}
