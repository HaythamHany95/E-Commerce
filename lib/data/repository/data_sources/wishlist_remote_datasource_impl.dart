import 'package:dartz/dartz.dart';
import 'package:e_commerce/data/api/api_manager.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/entities/get_wishlist_response_entity.dart';
import 'package:e_commerce/domain/repository/data_sources/wishlist_remote_datasource_contract.dart';

class WishListRemoteDataSourceImpl implements WishListRemoteDataSourceContract {
  ApiManager apiManager;

  WishListRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Errors, GetWishListResponseEntity>> getWishList() async {
    var either = await apiManager.getWishList();
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
