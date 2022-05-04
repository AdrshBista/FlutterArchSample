import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/data/models/index.dart';
import 'package:flutter_arch_sample/ui/styles/index.dart';

class EmailDetails extends StatelessWidget {
  final Email email;

  const EmailDetails({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sent by:', style: TextStyles.bodyText1.semiBold),
          const SizedBox(height: 4.0),
          Text(email.sender.name, style: TextStyles.bodyText1),
          const SizedBox(height: 16.0),
          Text(email.subject, style: TextStyles.headline4),
          const SizedBox(height: 16.0),
          Text(email.body, style: TextStyles.bodyText1),
        ],
      ),
    );
  }
}
