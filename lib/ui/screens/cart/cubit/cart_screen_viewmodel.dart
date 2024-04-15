import 'package:e_commerce/domain/entities/get_cart_response_entity.dart';
import 'package:e_commerce/domain/use_cases/get_cart_products_use_case.dart';
import 'package:e_commerce/ui/screens/cart/cubit/cart_screen_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreenViewModel extends Cubit<CartScreenStates> {
  GetCartProductsUseCase getCartProductsUseCase;

  CartScreenViewModel({required this.getCartProductsUseCase})
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
}
