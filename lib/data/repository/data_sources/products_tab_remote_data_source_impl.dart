import 'package:dartz/dartz.dart';
import 'package:e_commerce/data/api/api_manager.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/entities/products_response_entity.dart';
import 'package:e_commerce/domain/repository/data_sources/products_tab_remote_data_source_contract.dart';

class ProductsTabRemoteDataSourceImpl
    implements ProductsTabRemoteDataSourceContract {
  ApiManager apiManager;

  ProductsTabRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Errors, ProductsResponseEntity>> getAllProducts() async {
    var either = await apiManager.getAllProducts();
    return either.fold(
      (error) {
        return Left(error);
      },
      (response) {
        return Right(response);
      },
    );
  }
}
