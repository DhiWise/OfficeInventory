class PutDevicesResp {
  List<Records>? records;

  PutDevicesResp({this.records});

  PutDevicesResp.fromJson(Map<String, dynamic> json) {
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
  String? type;
  int? quantity;
  List<String>? employee;

  Fields({this.name, this.type, this.quantity, this.employee});

  Fields.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    type = json['Type'];
    quantity = json['Quantity'];
    employee = json['Employee'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['Name'] = this.name;
    }
    if (this.type != null) {
      data['Type'] = this.type;
    }
    if (this.quantity != null) {
      data['Quantity'] = this.quantity;
    }
    if (this.employee != null) {
      data['Employee'] = this.employee;
    }
    return data;
  }
}
