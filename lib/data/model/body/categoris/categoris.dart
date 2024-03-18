import 'package:equatable/equatable.dart';

import 'datum.dart';

class Categoris extends Equatable {
  final List<Datum>? data;
  final String? message;
  final int? code;

  const Categoris({this.data, this.message, this.code});

  factory Categoris.fromJson(Map<String, dynamic> data) => Categoris(
        data: (data['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        message: data['message'] as String?,
        code: data['code'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'message': message,
        'code': code,
      };

  @override
  List<Object?> get props {
    return [data, message, code];
  }
}
