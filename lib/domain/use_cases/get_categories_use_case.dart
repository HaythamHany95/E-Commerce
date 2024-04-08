import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/entities/categories_response_entity.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/repository/home_tab/categories/repository/categories_repository_contract.dart';

class GetAllCategoriesUseCase {
  CategoriesRepositoryContract repositoryDelegate;

  GetAllCategoriesUseCase({required this.repositoryDelegate});

  Future<Either<Errors, CategoriesResponseEntity>> invoke() {
    return repositoryDelegate.getAllCategories();
  }
}
