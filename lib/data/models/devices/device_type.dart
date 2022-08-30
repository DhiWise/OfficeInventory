class DeviceType{
  int? typeId;
  String? typeName;

  DeviceType(this.typeId, this.typeName);

  static List<DeviceType> getDeviceType() {
    return <DeviceType>[
      // DeviceType(typeId: 1, typeName: "Aaron"),
      // DeviceType(typeId: 2, typeName: "lol",),
    ];
  }
}