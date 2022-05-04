import 'package:flutter/material.dart';
import 'package:flutter_arch_sample/features/emails_list/widgets/emails_list.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_arch_sample/ui/widgets/index.dart';

import 'package:flutter_arch_sample/features/emails_list/index.dart';

class EmailsListView extends StatelessWidget {
  const EmailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emails'),
      ),
      body: BlocBuilder<EmailsListCubit, EmailsListState>(
        builder: (context, state) {
          if (state is EmailsListEmpty) {
            return const EmptyIndicator(message: 'No emails');
          } else if (state is EmailsListError) {
            return ErrorIndicator(message: state.message);
          } else if (state is EmailsListLoaded) {
            return EmailsList(emails: state.emails);
          } else {
            return const BusyIndicator();
          }
        },
      ),
    );
  }
}
