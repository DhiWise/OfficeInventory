class PostEmployeeReq {
  List<Records>? records;

  PostEmployeeReq({this.records});

  PostEmployeeReq.fromJson(Map<String, dynamic> json) {
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
  Fields? fields;

  Records({this.fields});

  Records.fromJson(Map<String, dynamic> json) {
    fields = json['fields'] != null ? Fields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.fields != null) {
      data['fields'] = this.fields?.toJson();
    }
    return data;
  }
}

class Fields {
  String? name;
  String? role;
  String? phone;
  String? email;
  List<String>? devices;
  List<String>? furniture;

  Fields(
      {this.name,
      this.role,
      this.phone,
      this.email,
      this.devices,
      this.furniture});

  Fields.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    role = json['Role'];
    phone = json['Phone'];
    email = json['Email'];
    devices = json['Devices'].cast<String>();
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
    if (this.phone != null) {
      data['Phone'] = this.phone;
    }
    if (this.email != null) {
      data['Email'] = this.email;
    }
    if (this.devices != null) {
      data['Devices'] = this.devices;
    }
    if (this.furniture != null) {
      data['Furniture'] = this.furniture;
    }
    return data;
  }
}
