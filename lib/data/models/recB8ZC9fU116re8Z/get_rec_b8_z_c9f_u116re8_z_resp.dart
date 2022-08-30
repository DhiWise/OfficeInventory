class GetRecB8ZC9fU116re8ZResp {
  String? id;
  String? createdTime;
  Fields? fields;

  GetRecB8ZC9fU116re8ZResp({this.id, this.createdTime, this.fields});

  GetRecB8ZC9fU116re8ZResp.fromJson(Map<String, dynamic> json) {
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
  List<String>? devices;
  int? employeeId;
  String? name;
  String? phone;
  String? email;
  String? role;
  List<String>? furniture;

  Fields(
      {this.devices,
      this.employeeId,
      this.name,
      this.phone,
      this.email,
      this.role,
      this.furniture});

  Fields.fromJson(Map<String, dynamic> json) {
    devices = json['Devices'].cast<String>();
    employeeId = json['EmployeeId'];
    name = json['Name'];
    phone = json['Phone'];
    email = json['Email'];
    role = json['Role'];
    furniture = json['Furniture'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.devices != null) {
      data['Devices'] = this.devices;
    }
    if (this.employeeId != null) {
      data['EmployeeId'] = this.employeeId;
    }
    if (this.name != null) {
      data['Name'] = this.name;
    }
    if (this.phone != null) {
      data['Phone'] = this.phone;
    }
    if (this.email != null) {
      data['Email'] = this.email;
    }
    if (this.role != null) {
      data['Role'] = this.role;
    }
    if (this.furniture != null) {
      data['Furniture'] = this.furniture;
    }
    return data;
  }
}
