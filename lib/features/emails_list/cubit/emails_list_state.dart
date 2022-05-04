part of 'emails_list_cubit.dart';

@immutable
abstract class EmailsListState {}

class EmailsListEmpty extends EmailsListState {}

class EmailsListLoading extends EmailsListState {}

class EmailsListLoaded extends EmailsListState {
  final List<Email> emails;

  EmailsListLoaded({
    required this.emails,
  });
}

class EmailsListError extends EmailsListState {
  final String message;

  EmailsListError({
    required this.message,
  });
}
