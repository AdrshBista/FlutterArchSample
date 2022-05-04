import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/data/models/index.dart';

import 'package:flutter_arch_sample/ui/widgets/index.dart';

import 'package:flutter_arch_sample/features/email_details/index.dart';

class EmailTile extends StatelessWidget {
  final Email email;

  const EmailTile({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24.0,
        child: CustomImage(email.sender.imageUrl),
      ),
      title: Text(email.subject),
      subtitle: Text(
        email.body,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: PrimaryButton(
        label: 'MORE',
        onPressed: () => _goToDetailsView(context, email.id),
      ),
    );
  }

  void _goToDetailsView(BuildContext context, int id) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => EmailDetailsView(id: id),
    ));
  }
}
