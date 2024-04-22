import 'package:equatable/equatable.dart';

class OrderModel extends Equatable {
  final Data? data;
  final String? message;
  final int? code;

  const OrderModel({this.data, this.message, this.code});

  factory OrderModel.fromMap(Map<String, dynamic> data) => OrderModel(
        data: data['data'] == null
            ? null
            : Data.fromMap(data['data'] as Map<String, dynamic>),
        message: data['message'] as String?,
        code: data['code'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'data': data?.toMap(),
        'message': message,
        'code': code,
      };

  @override
  List<Object?> get props => [data, message, code];
}

class Data extends Equatable {
  final num? points;
  final num? willDiscPoints;
  final num? totalPoints;
  final num? netTotal;
  final num? taxValue;
  final num? totalTax;
  final num? grandTotalWithoutDriverCost;
  final num? deliveryPrice;
  final num? grandTotal;

  const Data({
    this.points,
    this.willDiscPoints,
    this.totalPoints,
    this.netTotal,
    this.taxValue,
    this.totalTax,
    this.grandTotalWithoutDriverCost,
    this.deliveryPrice,
    this.grandTotal,
  });

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        points: data['points'] as num?,
        willDiscPoints: data['will_disc_points'] as num?,
        totalPoints: data['total_points'] as num?,
        netTotal: data['net_total'] as num?,
        taxValue: data['tax_value'] as num?,
        totalTax: data['total_tax'] as num?,
        grandTotalWithoutDriverCost:
            data['grand_total_without_driver_cost'] as num?,
        deliveryPrice: data['delivery_price'] as num?,
        grandTotal: data['grand_total'] as num?,
      );

  Map<String, dynamic> toMap() => {
        'points': points,
        'will_disc_points': willDiscPoints,
        'total_points': totalPoints,
        'net_total': netTotal,
        'tax_value': taxValue,
        'total_tax': totalTax,
        'grand_total_without_driver_cost': grandTotalWithoutDriverCost,
        'delivery_price': deliveryPrice,
        'grand_total': grandTotal,
      };

  @override
  List<Object?> get props {
    return [
      points,
      willDiscPoints,
      totalPoints,
      netTotal,
      taxValue,
      totalTax,
      grandTotalWithoutDriverCost,
      deliveryPrice,
      grandTotal,
    ];
  }
}
