import 'package:e_commerce/domain/entities/products_response_entity.dart';
import 'package:e_commerce/domain/use_cases/get_products_use_case.dart';
import 'package:e_commerce/ui/screens/home/home_tabs/products_tab/cubit/products_tab_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsTabViewModel extends Cubit<ProductsTabStates> {
  GetAllProductsUseCase getAllProductsUseCase;

  ProductsTabViewModel({required this.getAllProductsUseCase})
      : super(ProductsTabInitialState());

  List<ProductEntity> products = [];

  void getAllProducts() async {
    emit(ProductsTabLoadingState());
    var either = await getAllProductsUseCase.invoke();
    either.fold(
      (error) => emit(
        ProductsTabErrorState(error: error),
      ),
      (response) {
        products = response.data ?? [];
        emit(
          ProductsTabSuccesslState(productsResponse: response),
        );
      },
    );
  }
}
