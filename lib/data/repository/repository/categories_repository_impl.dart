import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/entities/categories_response_entity.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/repository/home_tab/categories/data_sources/categories_remote_data_source_contract.dart';
import 'package:e_commerce/domain/repository/home_tab/categories/repository/categories_repository_contract.dart';

class CategoriesRepositoryImpl implements CategoriesRepositoryContract {
  CategoriesRemoteDataSourceContract remoteDataSourceDelegate;

  CategoriesRepositoryImpl({required this.remoteDataSourceDelegate});

  @override
  Future<Either<Errors, CategoriesResponseEntity>> getAllCategories() {
    return remoteDataSourceDelegate.getAllCategories();
  }
}
