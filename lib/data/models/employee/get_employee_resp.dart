class GetEmployeeResp {
  List<Records>? records;

  GetEmployeeResp({this.records});

  GetEmployeeResp.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records?.add(Records.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.records != null) {
      data['records'] = this.records?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Records {
  String? id;
  String? createdTime;
  Fields? fields;

  Records({this.id, this.createdTime, this.fields});

  Records.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? role;
  String? email;
  String? phone;
  List<String>? devices;
  int? employeeId;
  List<String>? furniture;

  Fields(
      {this.name,
      this.role,
      this.email,
      this.phone,
      this.devices,
      this.employeeId,
      this.furniture});

  Fields.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    role = json['Role'];
    email = json['Email'];
    phone = json['Phone'];
    devices = json['Devices'].cast<String>();
    employeeId = json['EmployeeId'];
    furniture = json['Furniture'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['Name'] = this.name;
    }
    if (this.role != null) {
      data['Role'] = this.role;
    }
    if (this.email != null) {
      data['Email'] = this.email;
    }
    if (this.phone != null) {
      data['Phone'] = this.phone;
    }
    if (this.devices != null) {
      data['Devices'] = this.devices;
    }
    if (this.employeeId != null) {
      data['EmployeeId'] = this.employeeId;
    }
    if (this.furniture != null) {
      data['Furniture'] = this.furniture;
    }
    return data;
  }
}
