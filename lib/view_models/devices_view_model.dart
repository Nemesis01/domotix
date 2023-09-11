import 'package:domotix/models/device.dart';
import 'package:domotix/repositories/devices_repo.dart';
import 'package:flutter/material.dart';

class DevicesViewModel extends ChangeNotifier {

  // Device _device;
  final DevicesRepository repository;
  List<Device> devices = [];

  DevicesViewModel({required this.repository});

  void fetchData() async{
    devices = await repository.fetchData("url");
  }


  
}