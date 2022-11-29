class LoginModel {
 late bool  status;
 late String  message;
  Data?  data;


  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

}

class Data {
late  dynamic  id;
late  String  name;
late  String  email;
late  String  phone;
late  String  image;
late  dynamic  podynamics;
late  dynamic  credit;
late  String  token;


  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    podynamics = json['podynamics'];
    credit = json['credit'];
    token = json['token'];
  }

}