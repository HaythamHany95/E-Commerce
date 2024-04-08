class CategoriesResponseEntity {
  int? results;
  List<CategoryEntity>? data;

  CategoriesResponseEntity({this.results, this.data});
}

class CategoryEntity {
  String? id;
  String? name;
  String? slug;
  String? image;

  CategoryEntity({this.id, this.name, this.slug, this.image});
}
