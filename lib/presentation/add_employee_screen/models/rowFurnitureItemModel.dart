import '../../../core/app_export.dart';

class RowFurnitureItemModel {
  Rx<bool> isSelected = Rx(false);

  Rx<String> furnitureRecordId = Rx("RecordId");

  Rx<String> furnitureTxt = Rx("Furniture");
}
