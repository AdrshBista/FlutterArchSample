import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter_arch_sample/data/models/index.dart';
import 'package:flutter_arch_sample/data/services/index.dart';

import '../../../core/exceptions/index.dart';

part 'email_details_state.dart';

class EmailDetailsCubit extends Cubit<EmailDetailsState> {
  final EmailService emailService;

  EmailDetailsCubit({
    required this.emailService,
  }) : super(EmailDetailsLoading());

  Future<void> fetchEmailDetails(int id) async {
    emit(EmailDetailsLoading());
    try {
      final email = await emailService.fetchEmailDetails(id);
      emit(EmailDetailsLoaded(email: email));
    } on AppException catch (e) {
      emit(EmailDetailsError(message: e.message));
    }
  }
}
