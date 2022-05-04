part of 'email_details_cubit.dart';

@immutable
abstract class EmailDetailsState {}

class EmailDetailsLoading extends EmailDetailsState {}

class EmailDetailsLoaded extends EmailDetailsState {
  final Email email;

  EmailDetailsLoaded({
    required this.email,
  });
}

class EmailDetailsError extends EmailDetailsState {
  final String message;

  EmailDetailsError({
    required this.message,
  });
}
