import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_arch_sample/core/di/index.dart';

import 'package:flutter_arch_sample/data/services/index.dart';

import 'package:flutter_arch_sample/ui/widgets/index.dart';

import 'package:flutter_arch_sample/features/email_details/index.dart';
import 'package:flutter_arch_sample/features/email_details/widgets/index.dart';

class EmailDetailsView extends StatelessWidget {
  final int id;

  const EmailDetailsView({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmailDetailsCubit>(
      create: (context) => EmailDetailsCubit(
        emailService: locator<EmailService>(),
      )..fetchEmailDetails(id),
      child: const EmailsDetailsBody(),
    );
  }
}

class EmailsDetailsBody extends StatelessWidget {
  const EmailsDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Details'),
      ),
      body: BlocBuilder<EmailDetailsCubit, EmailDetailsState>(
        builder: (context, state) {
          if (state is EmailDetailsError) {
            return ErrorIndicator(message: state.message);
          } else if (state is EmailDetailsLoaded) {
            return EmailDetails(email: state.email);
          } else {
            return const BusyIndicator();
          }
        },
      ),
    );
  }
}
