/// code : 200
/// message : "OK"
/// requestCode : ""
/// data : {"header":{"serviceId":"mdo_commons_m01","userId":"","errMessage":"","code":"IB00013","message":"정상 조회되었습니다.!","repeat":1},"body":[{"userId":"SSZ017","userName":"이주형","deptCode":"162500","medClass":"1","mobile":"0?089529994","deptShortCode":"IMZ","medGroup":"HAA","token":"1316fefd-e7b1-4314-8881-d760e2721778"}]}

class UserModel {
  UserModel({
      num? code, 
      String? message, 
      String? requestCode, 
      Data? data,}){
    _code = code;
    _message = message;
    _requestCode = requestCode;
    _data = data;
}

  UserModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _requestCode = json['requestCode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _code;
  String? _message;
  String? _requestCode;
  Data? _data;
UserModel copyWith({  num? code,
  String? message,
  String? requestCode,
  Data? data,
}) => UserModel(  code: code ?? _code,
  message: message ?? _message,
  requestCode: requestCode ?? _requestCode,
  data: data ?? _data,
);
  num? get code => _code;
  String? get message => _message;
  String? get requestCode => _requestCode;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    map['requestCode'] = _requestCode;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// header : {"serviceId":"mdo_commons_m01","userId":"","errMessage":"","code":"IB00013","message":"정상 조회되었습니다.!","repeat":1}
/// body : [{"userId":"SSZ017","userName":"이주형","deptCode":"162500","medClass":"1","mobile":"0?089529994","deptShortCode":"IMZ","medGroup":"HAA","token":"1316fefd-e7b1-4314-8881-d760e2721778"}]

class Data {
  Data({
      Header? header, 
      List<Body>? body,}){
    _header = header;
    _body = body;
}

  Data.fromJson(dynamic json) {
    _header = json['header'] != null ? Header.fromJson(json['header']) : null;
    if (json['body'] != null) {
      _body = [];
      json['body'].forEach((v) {
        _body?.add(Body.fromJson(v));
      });
    }
  }
  Header? _header;
  List<Body>? _body;
Data copyWith({  Header? header,
  List<Body>? body,
}) => Data(  header: header ?? _header,
  body: body ?? _body,
);
  Header? get header => _header;
  List<Body>? get body => _body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_header != null) {
      map['header'] = _header?.toJson();
    }
    if (_body != null) {
      map['body'] = _body?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// userId : "SSZ017"
/// userName : "이주형"
/// deptCode : "162500"
/// medClass : "1"
/// mobile : "0?089529994"
/// deptShortCode : "IMZ"
/// medGroup : "HAA"
/// token : "1316fefd-e7b1-4314-8881-d760e2721778"

class Body {
  Body({
      String? userId, 
      String? userName, 
      String? deptCode, 
      String? medClass, 
      String? mobile, 
      String? deptShortCode, 
      String? medGroup, 
      String? token,}){
    _userId = userId;
    _userName = userName;
    _deptCode = deptCode;
    _medClass = medClass;
    _mobile = mobile;
    _deptShortCode = deptShortCode;
    _medGroup = medGroup;
    _token = token;
}

  Body.fromJson(dynamic json) {
    _userId = json['userId'];
    _userName = json['userName'];
    _deptCode = json['deptCode'];
    _medClass = json['medClass'];
    _mobile = json['mobile'];
    _deptShortCode = json['deptShortCode'];
    _medGroup = json['medGroup'];
    _token = json['token'];
  }
  String? _userId;
  String? _userName;
  String? _deptCode;
  String? _medClass;
  String? _mobile;
  String? _deptShortCode;
  String? _medGroup;
  String? _token;
Body copyWith({  String? userId,
  String? userName,
  String? deptCode,
  String? medClass,
  String? mobile,
  String? deptShortCode,
  String? medGroup,
  String? token,
}) => Body(  userId: userId ?? _userId,
  userName: userName ?? _userName,
  deptCode: deptCode ?? _deptCode,
  medClass: medClass ?? _medClass,
  mobile: mobile ?? _mobile,
  deptShortCode: deptShortCode ?? _deptShortCode,
  medGroup: medGroup ?? _medGroup,
  token: token ?? _token,
);
  String? get userId => _userId;
  String? get userName => _userName;
  String? get deptCode => _deptCode;
  String? get medClass => _medClass;
  String? get mobile => _mobile;
  String? get deptShortCode => _deptShortCode;
  String? get medGroup => _medGroup;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = _userId;
    map['userName'] = _userName;
    map['deptCode'] = _deptCode;
    map['medClass'] = _medClass;
    map['mobile'] = _mobile;
    map['deptShortCode'] = _deptShortCode;
    map['medGroup'] = _medGroup;
    map['token'] = _token;
    return map;
  }

}

/// serviceId : "mdo_commons_m01"
/// userId : ""
/// errMessage : ""
/// code : "IB00013"
/// message : "정상 조회되었습니다.!"
/// repeat : 1

class Header {
  Header({
      String? serviceId, 
      String? userId, 
      String? errMessage, 
      String? code, 
      String? message, 
      num? repeat,}){
    _serviceId = serviceId;
    _userId = userId;
    _errMessage = errMessage;
    _code = code;
    _message = message;
    _repeat = repeat;
}

  Header.fromJson(dynamic json) {
    _serviceId = json['serviceId'];
    _userId = json['userId'];
    _errMessage = json['errMessage'];
    _code = json['code'];
    _message = json['message'];
    _repeat = json['repeat'];
  }
  String? _serviceId;
  String? _userId;
  String? _errMessage;
  String? _code;
  String? _message;
  num? _repeat;
Header copyWith({  String? serviceId,
  String? userId,
  String? errMessage,
  String? code,
  String? message,
  num? repeat,
}) => Header(  serviceId: serviceId ?? _serviceId,
  userId: userId ?? _userId,
  errMessage: errMessage ?? _errMessage,
  code: code ?? _code,
  message: message ?? _message,
  repeat: repeat ?? _repeat,
);
  String? get serviceId => _serviceId;
  String? get userId => _userId;
  String? get errMessage => _errMessage;
  String? get code => _code;
  String? get message => _message;
  num? get repeat => _repeat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['serviceId'] = _serviceId;
    map['userId'] = _userId;
    map['errMessage'] = _errMessage;
    map['code'] = _code;
    map['message'] = _message;
    map['repeat'] = _repeat;
    return map;
  }

}