class ProductQueryParameters {
  final int? categoryId;
  final int? subCategoryId;
  final String? title;

  ProductQueryParameters({
    this.categoryId,
    this.subCategoryId,
    this.title,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      if (categoryId != null) 'category_id': categoryId.toString(),
      if (subCategoryId != null) 'sub_category_id': subCategoryId.toString(),
      if (title != null && title!.isNotEmpty) 'title': title!,
    };
    return map;
  }
}
