import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';

import 'package:flutter_arch_sample/core/exceptions/index.dart';

import 'package:flutter_arch_sample/data/models/index.dart';
import 'package:flutter_arch_sample/data/services/index.dart';

part 'emails_list_state.dart';

class EmailsListCubit extends Cubit<EmailsListState> {
  final EmailService emailService;

  EmailsListCubit({
    required this.emailService,
  }) : super(EmailsListEmpty());

  Future<void> fetchEmails() async {
    emit(EmailsListLoading());
    try {
      final emails = await emailService.fetchEmails();
      if (emails.isEmpty) {
        emit(EmailsListEmpty());
      } else {
        emit(EmailsListLoaded(emails: emails));
      }
    } on AppException catch (e) {
      emit(EmailsListError(message: e.message));
    }
  }
}
