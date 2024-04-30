
import 'package:equatable/equatable.dart';

import 'sub_category.dart';

class Category extends Equatable {
  final int? id;
  final String? image;
  final String? title;
  final List<SubCategory>? subCategories;
  final String? createdAt;

  const Category({
    this.id,
    this.image,
    this.title,
    this.subCategories,
    this.createdAt,
  });

  factory Category.fromMap(Map<String, dynamic> data) => Category(
        id: data['id'] as int?,
        image: data['image'] as String?,
        title: data['title'] as String?,
        subCategories: (data['sub_categories'] as List<dynamic>?)
            ?.map((e) => SubCategory.fromMap(e as Map<String, dynamic>))
            .toList(),
        createdAt: data['created_at'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'title': title,
        'sub_categories': subCategories?.map((e) => e.toMap()).toList(),
        'created_at': createdAt,
      };

  

  @override
  List<Object?> get props => [id, image, title, subCategories, createdAt];
}
