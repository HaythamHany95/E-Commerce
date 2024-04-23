import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/entities/get_wishlist_response_entity.dart';

abstract class WishListTabStates {}

class WishListInitialState extends WishListTabStates {}

class WishListLoadingState extends WishListTabStates {}

class WishListErrorState extends WishListTabStates {
  Errors error;
  WishListErrorState({required this.error});
}

class WishListSuccessState extends WishListTabStates {
  GetWishListResponseEntity wishListResponseEntity;
  WishListSuccessState({required this.wishListResponseEntity});
}
