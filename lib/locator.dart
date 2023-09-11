import 'package:domotix/repositories/devices_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;
void setupLocator(){
  locator.registerFactory<DevicesRepository>(() => DevicesRepository());
}