

import 'package:equatable/equatable.dart';

import 'data.dart';

class HomeSlider extends Equatable {
  final Data? data;
  final String? message;
  final int? code;

  const HomeSlider({this.data, this.message, this.code});

  factory HomeSlider.fromJson(Map<String, dynamic> data) => HomeSlider(
        data: data['data'] == null
            ? null
            : Data.fromJson(data['data'] as Map<String, dynamic>),
        message: data['message'] as String?,
        code: data['code'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
        'message': message,
        'code': code,
      };
      
        @override
        List<Object?> get props {
          return[data,message,code];
        }


}
