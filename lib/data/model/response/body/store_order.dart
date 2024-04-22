import 'package:equatable/equatable.dart';

class StoreOrder extends Equatable {
  final String? address;
  final num? delivery;
  final double? latitude;
  final double? longitude;
  final dynamic notes;
  final String? payType;
  final num? netTotal;
  final num? driverCost;
  final bool? isPoints;
  final num? pointsCount;
  final num? pointsValue;
  final num? taxValue;
  final num? grandTotal;
  final List<Detail>? details;

  const StoreOrder({
    this.address,
    this.delivery,
    this.latitude,
    this.longitude,
    this.notes,
    this.payType,
    this.netTotal,
    this.driverCost,
    this.isPoints,
    this.pointsCount,
    this.pointsValue,
    this.taxValue,
    this.grandTotal,
    this.details,
  });

  factory StoreOrder.fromMap(Map<String, dynamic> data) => StoreOrder(
        address: data['address'] as String?,
        delivery: data['delivery'] as num?,
        latitude: (data['latitude'] as num?)?.toDouble(),
        longitude: (data['longitude'] as num?)?.toDouble(),
        notes: data['notes'] as dynamic,
        payType: data['pay_type'] as String?,
        netTotal: data['net_total'] as num?,
        driverCost: data['driver_cost'] as num?,
        isPoints: data['is_points'] as bool?,
        pointsCount: data['points_count'] as num?,
        pointsValue: data['points_value'] as num?,
        taxValue: (data['tax_value'] as num?)?.toDouble(),
        grandTotal: (data['grand_total'] as num?)?.toDouble(),
        details: (data['details'] as List<dynamic>?)
            ?.map((e) => Detail.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'address': address,
        'delivery': delivery,
        'latitude': latitude,
        'longitude': longitude,
        'notes': notes,
        'pay_type': payType,
        'net_total': netTotal,
        'driver_cost': driverCost,
        'is_points': isPoints,
        'points_count': pointsCount,
        'points_value': pointsValue,
        'tax_value': taxValue,
        'grand_total': grandTotal,
        'details': details?.map((e) => e.toMap()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      address,
      delivery,
      latitude,
      longitude,
      notes,
      payType,
      netTotal,
      driverCost,
      isPoints,
      pointsCount,
      pointsValue,
      taxValue,
      grandTotal,
      details,
    ];
  }
}

class Detail extends Equatable {
  final int? productId;
  final num? qty;
  final num? netCost;

  const Detail({this.productId, this.qty, this.netCost});

  factory Detail.fromMap(Map<String, dynamic> data) => Detail(
        productId: data['product_id'] as int?,
        qty: (data['qty'] as num?)?.toDouble(),
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
