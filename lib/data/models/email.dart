import 'package:flutter_arch_sample/data/models/index.dart';

class Email {
  final int id;
  final EmailSender sender;
  final String subject;
  final String body;

  const Email({
    required this.id,
    required this.sender,
    required this.subject,
    required this.body,
  });
}
