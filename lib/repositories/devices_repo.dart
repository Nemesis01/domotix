import 'package:domotix/models/device.dart';
import 'package:domotix/services/device_service.dart';


class DevicesRepository {

  final DeviceService _deviceService = DeviceService();
  

  Future<List<Device>> fetchData(String value) async {
    dynamic devicesList = await _deviceService.getAllDevices(value);
    // final json = response['results'] as List;
    // List<Device> devicesList = json.map( (jsonTag) => Device.fromJson(jsonTag)).toList();
    return devicesList;
  }

  
  
}