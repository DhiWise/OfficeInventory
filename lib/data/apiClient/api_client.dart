import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/core/constants/MyConstant.dart';
import 'package:officeinventoryapp/core/utils/progress_dialog_utils.dart';

class ApiClient extends GetConnect {
  var url = "https://api.airtable.com";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) {
      Map<String, String> headers = {};
      request.headers.addAll(headers);
      return request;
    });
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  Future updateFurniture(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.put(
          '$url/v0/${MyConstant.baseID}/Furniture',
          headers: headers,
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createFurniture(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/v0/${MyConstant.baseID}/Furniture',
          headers: headers,
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future deleteFurniture(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map<String, dynamic> queryParams = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.delete(
          '$url/v0/${MyConstant.baseID}/Furniture',
          headers: headers,
          query: queryParams);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchRec3WMmnJG453Rp9v(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '$url/v0/${MyConstant.baseID}/Furniture/${Get.find<PrefUtils>().getFurnitureRecordId()}',
          headers: headers);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchFurniture(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .get('$url/v0/${MyConstant.baseID}/Furniture', headers: headers);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future updateDevices(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.put(
          '$url/v0/${MyConstant.baseID}/Devices',
          headers: headers,
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchRecJt0IEYnNp0Cdj2(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '$url/v0/${MyConstant.baseID}/Devices/${Get.find<PrefUtils>().getDeviceRecordId()}',
          headers: headers);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createDevices(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/v0/${MyConstant.baseID}/Devices',
          headers: headers,
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future deleteDevices(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
        Map<String, String> headers = const {},
        Map<String, dynamic> queryParams = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .delete('$url/v0/${MyConstant.baseID}/Devices',
          headers: headers,
          query: queryParams);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchDevices(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .get('$url/v0/${MyConstant.baseID}/Devices', headers: headers);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future deleteEmployee(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map<String, dynamic> queryParams = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.delete(
          '$url/v0/${MyConstant.baseID}/Employee',
          headers: headers,
          query: queryParams);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future updateEmployee(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.put(
          '$url/v0/${MyConstant.baseID}/Employee',
          headers: headers,
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createEmployee(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/v0/${MyConstant.baseID}/Employee',
          headers: headers,
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchRecB8ZC9fU116re8Z(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '$url/v0/${MyConstant.baseID}/Employee/${Get.find<PrefUtils>().getEmployeeRecordId()}',
          headers: headers);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchEmployee(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {}}) async {
    // ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .get('$url/v0/${MyConstant.baseID}/Employee?sort%5B0%5D%5Bdirection%5D=desc&sort%5B0%5D%5Bfield%5D=EmployeeId', headers: headers);
      // ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }
}
