import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_arch_sample/core/constants/index.dart';
import 'package:flutter_arch_sample/core/di/index.dart';

import 'package:flutter_arch_sample/data/services/index.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';

import 'package:flutter_arch_sample/features/emails_list/index.dart';

Future<void> main() async {
  await setupLocator();
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmailsListCubit>(
      create: (_) => EmailsListCubit(
        emailService: locator<EmailService>(),
      )..fetchEmails(),
      child: MaterialApp(
        title: AppConfig.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.dark,
        home: const EmailsListView(),
      ),
    );
  }
}
