import 'package:equatable/equatable.dart';

class EmptyModel extends Equatable {
  final dynamic data;
  final String? message;
  final int? code;

  const EmptyModel({this.data, this.message, this.code});

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

  @override
  List<Object?> get props => [data, message, code];
}
