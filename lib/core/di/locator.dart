import 'package:get_it/get_it.dart';

import 'package:flutter_arch_sample/core/network/index.dart';

import 'package:flutter_arch_sample/data/services/index.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<EmailService>(
    () => FakeEmailService(
      networkClient: FakeNetworkClient(),
    ),
  );

  await locator.allReady();
}
