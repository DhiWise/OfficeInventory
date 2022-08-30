import 'package:get/get.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/models/rowDeviceItemModel.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/models/rowFurnitureItemModel.dart';

class EditEmployeeModel {

  RxList<RowDeviceItemModel> rowDeviceItemList =
  RxList.filled(4, RowDeviceItemModel());

  RxList<RowFurnitureItemModel> rowFurnitureItemList =
  RxList.filled(4, RowFurnitureItemModel());

  Rx<String> furnitureCounterTxt = Rx('Lorem ipsum dolor sit amet');
}
