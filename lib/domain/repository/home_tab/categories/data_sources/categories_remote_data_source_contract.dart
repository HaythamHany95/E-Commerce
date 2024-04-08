import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/entities/categories_response_entity.dart';
import 'package:e_commerce/domain/entities/errors.dart';

abstract class CategoriesRemoteDataSourceContract {
  Future<Either<Errors, CategoriesResponseEntity>> getAllCategories();
}
