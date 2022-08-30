class GetRec3WMmnJG453Rp9vResp {
  String? id;
  String? createdTime;
  Fields? fields;

  GetRec3WMmnJG453Rp9vResp({this.id, this.createdTime, this.fields});

  GetRec3WMmnJG453Rp9vResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdTime = json['createdTime'];
    fields = json['fields'] != null ? Fields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdTime != null) {
      data['createdTime'] = this.createdTime;
    }
    if (this.fields != null) {
      data['fields'] = this.fields?.toJson();
    }
    return data;
  }
}

class Fields {
  int? quantity;
  String? furnitureName;
  String? type;
  List<String>? employee;

  Fields({this.quantity, this.furnitureName, this.type, this.employee});

  Fields.fromJson(Map<String, dynamic> json) {
    quantity = json['Quantity'];
    furnitureName = json['FurnitureName'];
    type = json['Type'];
    employee = json['Employee'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.quantity != null) {
      data['Quantity'] = this.quantity;
    }
    if (this.furnitureName != null) {
      data['FurnitureName'] = this.furnitureName;
    }
    if (this.type != null) {
      data['Type'] = this.type;
    }
    if (this.employee != null) {
      data['Employee'] = this.employee;
    }
    return data;
  }
}
