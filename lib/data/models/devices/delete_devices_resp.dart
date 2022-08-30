class DeleteDevicesResp {
  Error? error;

  DeleteDevicesResp({this.error});

  DeleteDevicesResp.fromJson(Map<String, dynamic> json) {
    error = json['error'] != null ? Error.fromJson(json['error']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.error != null) {
      data['error'] = this.error?.toJson();
    }
    return data;
  }
}

class Error {
  String? type;
  String? message;

  Error({this.type, this.message});

  Error.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.message != null) {
      data['message'] = this.message;
    }
    return data;
  }
}
