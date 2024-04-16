import 'package:e_commerce/domain/entities/get_cart_response_entity.dart';
import 'package:e_commerce/domain/use_cases/delete_product_from_cart_use_case.dart';
import 'package:e_commerce/domain/use_cases/get_cart_products_use_case.dart';
import 'package:e_commerce/ui/screens/cart/cubit/cart_screen_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreenViewModel extends Cubit<CartScreenStates> {
  GetCartProductsUseCase getCartProductsUseCase;
  DeleteProductFromCartUseCase deleteProductFromCartUseCase;

  CartScreenViewModel(
      {required this.getCartProductsUseCase,
      required this.deleteProductFromCartUseCase})
      : super(CartScreenInitialState());

  List<CartProductsEntity> cartProducts = [];

  void getCartProducts() async {
    emit(GetCartLoadingState());
    var either = await getCartProductsUseCase.invoke();
    either.fold(
      (error) => emit(
        GetCartErrorState(error: error),
      ),
      (response) {
        cartProducts = response.data?.products ?? [];
        emit(GetCartSuccessState(getCartResponseEntity: response));
      },
    );
  }

  void deleteProductFromCart(String productId) async {
    emit(DeleteFromCartLoadingState());
    var either = await deleteProductFromCartUseCase.invoke(productId);
    either.fold(
      (error) => emit(DeleteFromCartErrorState(error: error)),
      (response) {
        cartProducts = response.data?.products ?? [];
        emit(GetCartSuccessState(getCartResponseEntity: response));
      },
    );
  }
}
