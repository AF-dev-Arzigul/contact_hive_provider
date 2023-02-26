import 'package:ari_oldirmaganman/hive.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.instance;

Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.registerLazySingleton(() => HiveHelper());
  await di.get<HiveHelper>().init();
}
