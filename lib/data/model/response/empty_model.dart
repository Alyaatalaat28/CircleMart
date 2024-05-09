class EmptyModel {
  dynamic data;
  String? message;
  int? code;

  EmptyModel({this.data, this.message, this.code});

  factory EmptyModel.fromMap(Map<String, dynamic> data) => EmptyModel(
        data: data['data'] as dynamic,
        message: data['message'] as String?,
        code: data['code'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'data': data,
        'message': message,
        'code': code,
      };
}
