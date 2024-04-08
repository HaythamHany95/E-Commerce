import 'package:dartz/dartz.dart';
import 'package:e_commerce/data/api/api_manager.dart';
import 'package:e_commerce/domain/entities/categories_response_entity.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/repository/home_tab/categories/data_sources/categories_remote_data_source_contract.dart';

class CategoriesRemoteDataSourceImpl
    implements CategoriesRemoteDataSourceContract {
  ApiManager apiManager;

  CategoriesRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Errors, CategoriesResponseEntity>> getAllCategories() async {
    var either = await apiManager.getAllCategories();
    return either.fold(
        // Either Error :
        (error) {
      return Left(error);
    },
        // Either Success :
        (response) {
      return Right(response);

      ///
      //* MARK: There is no coverting method her from DTO to Entity; because DTO extends from Entity
      //* and become one of its sub-types `Polymorphism`
    });
  }
}
