import 'package:domotix/view_models/devices_view_model.dart';
import 'package:domotix/views/device/device_card_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DevicesScreen extends StatefulWidget {
  
  const DevicesScreen({super.key}); 
  @override
  State<StatefulWidget> createState() => _DevicesScreenState();


}

class _DevicesScreenState extends State<DevicesScreen> {


 late DevicesViewModel viewModel;

  @override
  void initState(){
    viewModel = Provider.of<DevicesViewModel>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback(
      (_){ viewModel.fetchData();}
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Devices"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Favoris'),
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: viewModel.devices.length,  
                itemBuilder: (context, index) => DeviceCardView(name: viewModel.devices[index].name),
                shrinkWrap: true,
              ),
            ),
            Text('Favoris'),
            SizedBox(
              height: 350.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: viewModel.devices.length,  
                itemBuilder: (context, index) => DeviceCardView(name: viewModel.devices[index].name),
                shrinkWrap: true,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
