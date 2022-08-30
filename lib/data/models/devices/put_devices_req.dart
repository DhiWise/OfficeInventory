class PutDevicesReq {
  List<Records>? records;

  PutDevicesReq({this.records});

  PutDevicesReq.fromJson(Map<String, dynamic> json) {
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
  Fields? fields;

  Records({this.id, this.fields});

  Records.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fields = json['fields'] != null ? Fields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
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
  List<String>? employee;
  int? quantity;

  Fields({this.name, this.type, this.employee, this.quantity});

  Fields.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    type = json['Type'];
    employee = json['Employee'].cast<String>();
    quantity = json['Quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['Name'] = this.name;
    }
    if (this.type != null) {
      data['Type'] = this.type;
    }
    if (this.employee != null) {
      data['Employee'] = this.employee;
    }
    if (this.quantity != null) {
      data['Quantity'] = this.quantity;
    }
    return data;
  }
}
