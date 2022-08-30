import '../../../core/app_export.dart';

class RowDeviceItemModel {
  Rx<bool> isSelected = Rx(false);

  Rx<String> deviceRecordId = Rx("RecordId");

  Rx<String> deviceTxt = Rx("Device");
}
