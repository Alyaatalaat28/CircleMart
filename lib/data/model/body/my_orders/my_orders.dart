import 'package:equatable/equatable.dart';

import 'datum.dart';

class MyOrders extends Equatable {
  final List<Datum>? data;
  final String? message;
  final int? code;

  const MyOrders({this.data, this.message, this.code});

  factory MyOrders.fromMap(Map<String, dynamic> data) => MyOrders(
        data: (data['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromMap(e as Map<String, dynamic>))
            .toList(),
        message: data['message'] as String?,
        code: data['code'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'data': data?.map((e) => e.toMap()).toList(),
        'message': message,
        'code': code,
      };

  @override
  List<Object?> get props => [data, message, code];
}
