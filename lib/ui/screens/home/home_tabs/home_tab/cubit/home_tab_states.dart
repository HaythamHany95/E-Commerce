import 'package:e_commerce/domain/entities/categories_response_entity.dart';
import 'package:e_commerce/domain/entities/errors.dart';

abstract class HomeTabStates {}

class HomeTabInitialState extends HomeTabStates {}

class CategoryLoadingState extends HomeTabStates {}

class CatagoryErrorState extends HomeTabStates {
  Errors? errorMessage;

  CatagoryErrorState({required this.errorMessage});
}

class CategorySuccessState extends HomeTabStates {
  CategoriesResponseEntity category;

  CategorySuccessState({required this.category});
}
