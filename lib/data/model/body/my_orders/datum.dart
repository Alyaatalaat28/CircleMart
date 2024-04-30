import 'package:equatable/equatable.dart';

import 'detail.dart';
import 'user.dart';

class Datum extends Equatable {
  final int? id;
  final int? userId;
  final User? user;
  final dynamic driverCancelReason;
  final String? address;
  final dynamic addressDetails;
  final double? latitude;
  final double? longitude;
  final String? status;
  final bool? isCollected;
  final String? payType;
  final bool? isPaid;
  final bool? isPoints;
  final num? pointsCount;
  final num? pointsValue;
  final int? driverId;
  final dynamic driver;
  final num? driverCost;
  final num? netTotal;
  final num? taxValue;
  final num? deliveryPrice;
  final num? grandTotal;
  final dynamic notes;
  final String? createdAt;
  final String? date;
  final String? time;
  final List<Detail>? details;

  const Datum({
    this.id,
    this.userId,
    this.user,
    this.driverCancelReason,
    this.address,
    this.addressDetails,
    this.latitude,
    this.longitude,
    this.status,
    this.isCollected,
    this.payType,
    this.isPaid,
    this.isPoints,
    this.pointsCount,
    this.pointsValue,
    this.driverId,
    this.driver,
    this.driverCost,
    this.netTotal,
    this.taxValue,
    this.deliveryPrice,
    this.grandTotal,
    this.notes,
    this.createdAt,
    this.date,
    this.time,
    this.details,
  });

  factory Datum.fromMap(Map<String, dynamic> data) => Datum(
        id: data['id'] as int?,
        userId: data['user_id'] as int?,
        user: data['user'] == null
            ? null
            : User.fromMap(data['user'] as Map<String, dynamic>),
        driverCancelReason: data['driver_cancel_reason'] as dynamic,
        address: data['address'] as String?,
        addressDetails: data['address_details'] as dynamic,
        latitude: (data['latitude'] as num?)?.toDouble(),
        longitude: (data['longitude'] as num?)?.toDouble(),
        status: data['status'] as String?,
        isCollected: data['is_collected'] as bool?,
        payType: data['pay_type'] as String?,
        isPaid: data['is_paid'] as bool?,
        isPoints: data['is_points'] as bool?,
        pointsCount: data['points_count'] as num?,
        pointsValue: data['points_value'] as num?,
        driverId: data['driver_id'] as int?,
        driver: data['driver'] as dynamic,
        driverCost: data['driver_cost'] as num?,
        netTotal: (data['net_total'] as num?)?.toDouble(),
        taxValue: data['tax_value'] as num?,
        deliveryPrice: data['delivery_price'] as num?,
        grandTotal: (data['grand_total'] as num?)?.toDouble(),
        notes: data['notes'] as dynamic,
        createdAt: data['created_at'] as String?,
        date: data['date'] as String?,
        time: data['time'] as String?,
        details: (data['details'] as List<dynamic>?)
            ?.map((e) => Detail.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'user_id': userId,
        'user': user?.toMap(),
        'driver_cancel_reason': driverCancelReason,
        'address': address,
        'address_details': addressDetails,
        'latitude': latitude,
        'longitude': longitude,
        'status': status,
        'is_collected': isCollected,
        'pay_type': payType,
        'is_paid': isPaid,
        'is_points': isPoints,
        'points_count': pointsCount,
        'points_value': pointsValue,
        'driver_id': driverId,
        'driver': driver,
        'driver_cost': driverCost,
        'net_total': netTotal,
        'tax_value': taxValue,
        'delivery_price': deliveryPrice,
        'grand_total': grandTotal,
        'notes': notes,
        'created_at': createdAt,
        'date': date,
        'time': time,
        'details': details?.map((e) => e.toMap()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      userId,
      user,
      driverCancelReason,
      address,
      addressDetails,
      latitude,
      longitude,
      status,
      isCollected,
      payType,
      isPaid,
      isPoints,
      pointsCount,
      pointsValue,
      driverId,
      driver,
      driverCost,
      netTotal,
      taxValue,
      deliveryPrice,
      grandTotal,
      notes,
      createdAt,
      date,
      time,
      details,
    ];
  }
}
