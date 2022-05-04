import 'package:flutter_arch_sample/core/exceptions/index.dart';

import 'package:flutter_arch_sample/data/models/index.dart';

abstract class EmailService {
  /// Returns a list of [Email].
  /// Throws [AppException] in case of any errors.
  Future<List<Email>> fetchEmails();

  /// Returns the details of a single email .
  /// [id] refers to the id of the selected email.
  /// Throws [AppException] in case of any errors.
  Future<Email> fetchEmailDetails(int id);
}
