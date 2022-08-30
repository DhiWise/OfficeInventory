import 'package:get/get.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/models/rowFurnitureItemModel.dart';

import 'rowDeviceItemModel.dart';

class AddEmployeeModel {

  RxList<RowDeviceItemModel> rowDeviceItemList =
  RxList.filled(4, RowDeviceItemModel());

  RxList<RowFurnitureItemModel> rowFurnitureItemList =
  RxList.filled(4, RowFurnitureItemModel());

  Rx<String> deviceCounterTxt = Rx('Lorem ipsum dolor sit amet');
}
