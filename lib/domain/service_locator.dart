import 'package:flutter_festival/domain/storage/hive_storage_service.dart';
import 'package:flutter_festival/domain/storage/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  //Storage Service must be located first because other services use it
  getIt.registerSingleton<StorageService>(HiveStorageService());
}
