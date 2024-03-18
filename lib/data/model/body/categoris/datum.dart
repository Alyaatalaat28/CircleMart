import 'package:equatable/equatable.dart';

import 'sub_category.dart';

class Datum extends Equatable {
  final int? id;
  final String? image;
  final String? title;
  final List<SubCategory>? subCategories;
  final String? createdAt;

  const Datum({
    this.id,
    this.image,
    this.title,
    this.subCategories,
    this.createdAt,
  });

  factory Datum.fromJson(Map<String, dynamic> data) => Datum(
        id: data['id'] as int?,
        image: data['image'] as String?,
        title: data['title'] as String?,
        subCategories: (data['sub_categories'] as List<dynamic>?)
            ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
            .toList(),
        createdAt: data['created_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'title': title,
        'sub_categories': subCategories?.map((e) => e.toJson()).toList(),
        'created_at': createdAt,
      };
      
        @override
        List<Object?> get props {
          return [id, image, title, subCategories, createdAt];
          }
}
