import 'package:flutter_arch_sample/core/network/index.dart';
import 'package:flutter_arch_sample/core/constants/index.dart';

import 'package:flutter_arch_sample/data/models/index.dart';
import 'package:flutter_arch_sample/data/services/index.dart';

class FakeEmailService implements EmailService {
  /// This [NetworkClient] will be used to make api calls, but since this is a
  /// demo, this is unused for now.
  final NetworkClient networkClient;

  const FakeEmailService({
    required this.networkClient,
  });

  @override
  Future<List<Email>> fetchEmails() async {
    // Make api calls here.
    await Future.delayed(const Duration(seconds: 2));
    return _emails;
  }

  @override
  Future<Email> fetchEmailDetails(int id) async {
    // Make api calls here.
    await Future.delayed(const Duration(seconds: 2));
    return _emails[id];
  }
}

final _emails = List.generate(
  50,
  (index) => Email(
    id: index,
    sender: _sender,
    subject: 'How are you?',
    body: "I'm doing fine, Thank you",
  ),
);

const _sender = EmailSender(
  name: 'Joh Doe',
  imageUrl: AppImages.defaultUser,
);
