import 'package:equatable/equatable.dart';

import 'product.dart';

class Detail extends Equatable {
  final int? id;
  final int? productId;
  final Product? product;
  final num? qty;
  final num? netCost;
  final num? total;

  const Detail({
    this.id,
    this.productId,
    this.product,
    this.qty,
    this.netCost,
    this.total,
  });

  factory Detail.fromMap(Map<String, dynamic> data) => Detail(
        id: data['id'] as int?,
        productId: data['product_id'] as int?,
        product: data['product'] == null
            ? null
            : Product.fromMap(data['product'] as Map<String, dynamic>),
        qty: data['qty'] as num?,
        netCost: data['net_cost'] as num?,
        total: data['total'] as num?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'product_id': productId,
        'product': product?.toMap(),
        'qty': qty,
        'net_cost': netCost,
        'total': total,
      };

  @override
  List<Object?> get props {
    return [
      id,
      productId,
      product,
      qty,
      netCost,
      total,
    ];
  }
}
