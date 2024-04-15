import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/entities/get_cart_response_entity.dart';

abstract class CartScreenStates {}

class CartScreenInitialState extends CartScreenStates {}

class GetCartLoadingState extends CartScreenStates {}

class GetCartErrorState extends CartScreenStates {
  Errors error;

  GetCartErrorState({required this.error});
}

class GetCartSuccessState extends CartScreenStates {
  GetCartResponseEntity getCartResponseEntity;

  GetCartSuccessState({required this.getCartResponseEntity});
}
