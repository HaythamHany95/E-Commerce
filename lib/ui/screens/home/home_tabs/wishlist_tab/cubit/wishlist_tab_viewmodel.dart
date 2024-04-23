import 'package:e_commerce/domain/entities/get_wishlist_response_entity.dart';
import 'package:e_commerce/domain/use_cases/get_wishlist_usecase.dart';
import 'package:e_commerce/ui/screens/home/home_tabs/wishlist_tab/cubit/wishlist_tab_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishListTabViewModel extends Cubit<WishListTabStates> {
  GetWishListUseCase getWishListUseCase;

  WishListTabViewModel({required this.getWishListUseCase})
      : super(WishListInitialState());

  List<WishListProductEntity> wishListProducts = [];

  void getWishList() async {
    emit(WishListLoadingState());
    var either = await getWishListUseCase.invoke();
    either.fold(
        (error) => emit(
              WishListErrorState(error: error),
            ), (response) {
      wishListProducts = response.data ?? [];
      emit(WishListSuccessState(wishListResponseEntity: response));
    });
  }
}
