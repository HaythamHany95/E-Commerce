import 'package:e_commerce/domain/entities/products_response_entity.dart';

class GetWishListResponseEntity {
  String? statusMsg;
  String? message;
  String? status;
  int? count;
  List<ProductEntity>? data;

  GetWishListResponseEntity(
      {this.statusMsg, this.message, this.status, this.count, this.data});
}
