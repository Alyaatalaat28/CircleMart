
import 'package:equatable/equatable.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';


class LatestProducts extends Equatable {
  final List<Datam>? data;
  final String? message;
  final int? code;

  const LatestProducts({this.data, this.message, this.code});

  factory LatestProducts.fromMap(Map<String, dynamic> data) {
    return LatestProducts(
      data: (data['data'] as List<dynamic>?)
          ?.map((e) => Datam.fromMap(e as Map<String, dynamic>))
          .toList(),
      message: data['message'] as String?,
      code: data['code'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'data': data?.map((e) => e.toMap()).toList(),
        'message': message,
        'code': code,
      };


  @override
  List<Object?> get props => [data, message, code];
}
