
import 'package:equatable/equatable.dart';

class Slider extends Equatable {
  final int? id;
  final String? image;
  final int? categoryId;
  final int? subCategoryId;

  const Slider({this.id, this.image, this.categoryId, this.subCategoryId});

  factory Slider.fromJson(Map<String, dynamic> data) => Slider(
        id: data['id'] as int?,
        image: data['image'] as String?,
        categoryId: data['category_id'] as int?,
        subCategoryId: data['sub_category_id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'category_id': categoryId,
        'sub_category_id': subCategoryId,
      };
      
        @override
        List<Object?> get props{
           return[id,image,categoryId,subCategoryId];
        }


}
