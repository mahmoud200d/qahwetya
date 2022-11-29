class ForgotPasswordModel {
 late bool status;
 late String message;
 late int code;



  ForgotPasswordModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    code = json['code'];
  }


}
