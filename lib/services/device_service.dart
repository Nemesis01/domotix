import 'dart:convert';
import 'dart:io';
import 'package:domotix/models/device.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

class DeviceService {

  final List<Device> devices = [
    Device(id: "1", name: "prise salon"),
    Device(id: "2", name: "Prise Chambre"),
    Device(id: "3", name: "Thermostat"),
    Device(id: "4", name: "Laveuse"),
    Device(id: "5", name: "Four"),  
  ];
  
  Future<dynamic> getAllDevices(String url) async {

    // dynamic jsonResponse;
    // try {
    //   final response = await http.get(url as Uri);
    //   jsonResponse = returnResponse(response);
    // } catch (e) {
    //   e.toString();
    // }
    return devices;
  }

  dynamic returnResponse(http.Response response){

    switch(response.statusCode){
      case 200 : 
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      default:
        return '';

    }
  }
  
}