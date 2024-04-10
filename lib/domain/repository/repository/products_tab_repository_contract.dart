import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/entities/products_response_entity.dart';

abstract class ProductsTabRepositoryContract {
  Future<Either<Errors, ProductsResponseEntity>> getAllProducts();
}
