import 'package:equatable/equatable.dart';

class City extends Equatable {
  final int? id;
  final String? title;
  final num? deliveryCost;
  final int? regionId;

  const City({this.id, this.title, this.deliveryCost, this.regionId});

  factory City.fromMap(Map<String, dynamic> data) => City(
        id: data['id'] as int?,
        title: data['title'] as String?,
        deliveryCost: data['delivery_cost'] as num?,
        regionId: data['region_id'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'delivery_cost': deliveryCost,
        'region_id': regionId,
      };

  @override
  List<Object?> get props => [id, title, deliveryCost, regionId];
}
