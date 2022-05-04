import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/data/models/index.dart';

import 'package:flutter_arch_sample/features/emails_list/widgets/index.dart';

class EmailsList extends StatelessWidget {
  final List<Email> emails;

  const EmailsList({
    Key? key,
    required this.emails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emails.length,
      itemBuilder: (context, index) {
        return EmailTile(email: emails[index]);
      },
    );
  }
}
