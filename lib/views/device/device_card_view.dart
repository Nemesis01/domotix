import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeviceCardView extends StatefulWidget {
  
  final String name;
  
  
  const DeviceCardView({required this.name, super.key});

  @override
  State<DeviceCardView> createState() => _DeviceCardViewState();
}

class _DeviceCardViewState extends State<DeviceCardView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Text(widget.name),
              Transform.scale(scale: 0.5,child: Switch(value: true, onChanged: (_){}))
            ],
          ),
          
        ],
      ),
    );
  }
}