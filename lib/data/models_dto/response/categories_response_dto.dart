import 'package:e_commerce/domain/entities/categories_response_entity.dart';

class CategoriesResponseDTO extends CategoriesResponseEntity {
  String? message;
  String? statusMsg;

  Metadata? metadata;

  CategoriesResponseDTO(
      {this.statusMsg, this.message, super.results, this.metadata, super.data});

  CategoriesResponseDTO.fromJson(Map<String, dynamic> json) {
    if (json["message"] is String) {
      message = json["message"];
    }

    if (json["statusMsg"] is String) {
      statusMsg = json["statusMsg"];
    }

    if (json["results"] is int) {
      results = json["results"];
    }
    if (json["metadata"] is Map) {
      metadata =
          json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]);
    }
    if (json["data"] is List) {
      data = json["data"] == null
          ? null
          : (json["data"] as List).map((e) => CategoryDTO.fromJson(e)).toList();
    }
  }
}

class CategoryDTO extends CategoryEntity {
  String? createdAt;
  String? updatedAt;

  CategoryDTO(
      {super.id,
      super.name,
      super.slug,
      super.image,
      this.createdAt,
      this.updatedAt});

  CategoryDTO.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is String) {
      id = json["_id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
    if (json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
  }
}

class Metadata {
  int? currentPage;
  int? numberOfPages;
  int? limit;

  Metadata({this.currentPage, this.numberOfPages, this.limit});

  Metadata.fromJson(Map<String, dynamic> json) {
    if (json["currentPage"] is int) {
      currentPage = json["currentPage"];
    }
    if (json["numberOfPages"] is int) {
      numberOfPages = json["numberOfPages"];
    }
    if (json["limit"] is int) {
      limit = json["limit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["currentPage"] = currentPage;
    data["numberOfPages"] = numberOfPages;
    data["limit"] = limit;
    return data;
  }
}
