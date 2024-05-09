import 'package:equatable/equatable.dart';

import 'category.dart';
import 'sub_category.dart';

class Product extends Equatable {
  final int? id;
  final String? title;
  final String? image;
  final int? categoryId;
  final Category? category;
  final int? subCategoryId;
  final SubCategory? subCategory;
  final String? details;
  final dynamic salesLimit;
  final num? price;
  final String? unit;
  final num? weightUnit;
  final num? priceWeightUnit;
  final bool? isOffer;
  final num? isActive;
  final dynamic offerType;
  final num? offerValue;
  final String? offerStartDate;
  final String? offerEndDate;
  final num? oldPrice;
  final bool? isFavorite;

  const Product({
    this.id,
    this.title,
    this.image,
    this.categoryId,
    this.category,
    this.subCategoryId,
    this.subCategory,
    this.details,
    this.salesLimit,
    this.price,
    this.unit,
    this.weightUnit,
    this.priceWeightUnit,
    this.isOffer,
    this.isActive,
    this.offerType,
    this.offerValue,
    this.offerStartDate,
    this.offerEndDate,
    this.oldPrice,
    this.isFavorite,
  });

  factory Product.fromMap(Map<String, dynamic> data) => Product(
        id: data['id'] as int?,
        title: data['title'] as String?,
        image: data['image'] as String?,
        categoryId: data['category_id'] as int?,
        category: data['category'] == null
            ? null
            : Category.fromMap(data['category'] as Map<String, dynamic>),
        subCategoryId: data['sub_category_id'] as int?,
        subCategory: data['sub_category'] == null
            ? null
            : SubCategory.fromMap(data['sub_category'] as Map<String, dynamic>),
        details: data['details'] as String?,
        salesLimit: data['sales_limit'] as dynamic,
        price: data['price'] as num?,
        unit: data['unit'] as String?,
        weightUnit: data['weight_unit'] as num?,
        priceWeightUnit: data['price_weight_unit'] as num?,
        isOffer: data['is_offer'] as bool?,
        isActive: data['is_active'] as num?,
        offerType: data['offer_type'] as dynamic,
        offerValue: data['offer_value'] as num?,
        offerStartDate: data['offer_start_date'] as String?,
        offerEndDate: data['offer_end_date'] as String?,
        oldPrice: data['old_price'] as num?,
        isFavorite: data['is_favorite'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'image': image,
        'category_id': categoryId,
        'category': category?.toMap(),
        'sub_category_id': subCategoryId,
        'sub_category': subCategory?.toMap(),
        'details': details,
        'sales_limit': salesLimit,
        'price': price,
        'unit': unit,
        'weight_unit': weightUnit,
        'price_weight_unit': priceWeightUnit,
        'is_offer': isOffer,
        'is_active': isActive,
        'offer_type': offerType,
        'offer_value': offerValue,
        'offer_start_date': offerStartDate,
        'offer_end_date': offerEndDate,
        'old_price': oldPrice,
        'is_favorite': isFavorite,
      };

  @override
  List<Object?> get props {
    return [
      id,
      title,
      image,
      categoryId,
      category,
      subCategoryId,
      subCategory,
      details,
      salesLimit,
      price,
      unit,
      weightUnit,
      priceWeightUnit,
      isOffer,
      isActive,
      offerType,
      offerValue,
      offerStartDate,
      offerEndDate,
      oldPrice,
      isFavorite,
    ];
  }
}
