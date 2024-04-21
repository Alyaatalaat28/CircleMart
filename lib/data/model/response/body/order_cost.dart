import 'package:equatable/equatable.dart';

class OrderCost extends Equatable {
  final double? latitude;
  final double? longitude;
  final List<Detail>? details;

  const OrderCost({this.latitude, this.longitude, this.details});

  factory OrderCost.fromMap(Map<String, dynamic> data) => OrderCost(
        latitude: (data['latitude'] as num?)?.toDouble(),
        longitude: (data['longitude'] as num?)?.toDouble(),
        details: (data['details'] as List<dynamic>?)
            ?.map((e) => Detail.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'latitude': latitude,
        'longitude': longitude,
        'details': details?.map((e) => e.toMap()).toList(),
      };

  @override
  List<Object?> get props => [latitude, longitude, details];
}

class Detail extends Equatable {
  final int? productId;
  final num? qty;
  final num? netCost;

  const Detail({this.productId, this.qty, this.netCost});

  factory Detail.fromMap(Map<String, dynamic> data) => Detail(
        productId: data['product_id'] as int?,
        qty: data['qty'] as num?,
        netCost: data['net_cost'] as num?,
      );

  Map<String, dynamic> toMap() => {
        'product_id': productId,
        'qty': qty,
        'net_cost': netCost,
      };

  @override
  List<Object?> get props => [productId, qty, netCost];
}
