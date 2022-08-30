import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:officeinventoryapp/presentation/add_device_screen/controller/add_device_controller.dart';
import 'package:officeinventoryapp/presentation/add_device_screen/models/listDevicesItemsModel.dart';

class ListDevicesItemsWidget extends StatelessWidget {

  ListDevicesItemsWidget(this.listDevicesItemsModelObj);

  ListDevicesItemsModel listDevicesItemsModelObj;
  var controller = Get.find<AddDeviceController>();

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }

}
