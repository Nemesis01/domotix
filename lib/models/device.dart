class Device {
  
  final String id;
  final String name; 
  String? description;
  String? macAddress;
  String? ipAddress;
   final bool isOn;

  Device({required this.id, required this.name, this.isOn = false});
  
  Device.fromJson(Map<String, dynamic> json) 
  : id = json['id'],
    name = json['name'],
    description = json['description'],
    macAddress = json['macAddress'],
    ipAddress = json['ipAddress'],
    isOn = json['isOn'];
  
  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'description' : description,
    'macAddress' : macAddress,
    'ipAddress' : ipAddress,
    'isOn' : isOn,
  };
  
}