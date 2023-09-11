import 'package:domotix/models/room.dart';

class Home {

  String id; 
  String name = ""; 
  String description = "";
  List<Room> rooms = List.empty();

  Home({required this.id});
}

