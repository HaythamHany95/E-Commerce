import 'package:e_commerce/data/api/api_manager.dart';
import 'package:e_commerce/data/repository/data_sources/auth_remote_data_source_impl.dart';
import 'package:e_commerce/data/repository/data_sources/categories_remote_data_source_impl.dart';
import 'package:e_commerce/data/repository/repository/auth_repository_impl.dart';
import 'package:e_commerce/data/repository/repository/categories_repository_impl.dart';
import 'package:e_commerce/domain/repository/auth/data_sources/auth_remote_data_source_contract.dart';
import 'package:e_commerce/domain/repository/auth/repository/auth_repository_contract.dart';
import 'package:e_commerce/domain/repository/home_tab/categories/data_sources/categories_remote_data_source_contract.dart';
import 'package:e_commerce/domain/repository/home_tab/categories/repository/categories_repository_contract.dart';
import 'package:e_commerce/domain/use_cases/get_categories_use_case.dart';
import 'package:e_commerce/domain/use_cases/login_use_case.dart';
import 'package:e_commerce/domain/use_cases/register_use_case.dart';

///* ViewModel => object UseCase --------------------------------------------
RegisterUseCase injectRegisterUseCase() {
  return RegisterUseCase(authRepository: injectAuthRepositoryContract());
}

LoginUseCase injectLoginUseCase() {
  return LoginUseCase(authRepositoryDelegate: injectAuthRepositoryContract());
}

GetAllCategoriesUseCase injectGetAllCategoriesUseCase() {
  return GetAllCategoriesUseCase(
      repositoryDelegate: injectCategoriesRepositoryContract());
}

///* UseCase => object Repository  ---------------------------------------------
AuthRepositoryContract injectAuthRepositoryContract() {
  return AuthRepositoryImpl(
      remoteDataSourceDelegate: injectAuthRemoteDataSourceContract());
}

CategoriesRepositoryContract injectCategoriesRepositoryContract() {
  return CategoriesRepositoryImpl(
      remoteDataSourceDelegate: injectCategoriesRemoteDataSourceContract());
}

///* Repository => object DataSource  -------------------------------------------
AuthRemoteDataSourceContract injectAuthRemoteDataSourceContract() {
  return AuthRemoteDataSourceImpl(apiManager: injectApiManager());
}

CategoriesRemoteDataSourceContract injectCategoriesRemoteDataSourceContract() {
  return CategoriesRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}

///* DataSource = > object ApiManager  ------------------------------------------
ApiManager injectApiManager() {
  return ApiManager.getInstance();
}
