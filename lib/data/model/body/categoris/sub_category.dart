
import 'package:equatable/equatable.dart';

class SubCategory extends Equatable {
	final int? id;
	final String? image;
	final String? title;
	final List<dynamic>? subCategories;
	final String? createdAt;

	const SubCategory({
		this.id, 
		this.image, 
		this.title, 
		this.subCategories, 
		this.createdAt, 
	});

	factory SubCategory.fromJson(Map<String, dynamic> data) => SubCategory(
				id: data['id'] as int?,
				image: data['image'] as String?,
				title: data['title'] as String?,
				subCategories: data['sub_categories'] as List<dynamic>?,
				createdAt: data['created_at'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'image': image,
				'title': title,
				'sub_categories': subCategories,
				'created_at': createdAt,
			};
      
        @override
        List<Object?> get props {
          return [id, image, title, subCategories, createdAt];
           }

}
