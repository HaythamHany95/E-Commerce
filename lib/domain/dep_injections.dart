import 'package:e_commerce/data/api/api_manager.dart';
import 'package:e_commerce/data/repository/data_sources/auth_remote_data_source_impl.dart';
import 'package:e_commerce/data/repository/repository/auth_repository_impl.dart';
import 'package:e_commerce/domain/repository/auth/data_sources/auth_remote_data_source_contract.dart';
import 'package:e_commerce/domain/repository/auth/repository/auth_repository_contract.dart';
import 'package:e_commerce/domain/use_cases/register_use_case.dart';

//* ViewModel => object UseCase
RegisterUseCase injectRegisterUseCase() {
  return RegisterUseCase(authRepository: injectAuthRepositoryContract());
}

//* UseCase => object Repository
AuthRepositoryContract injectAuthRepositoryContract() {
  return AuthRepositoryImpl(
      remoteDataSourceDelegate: injectAuthRemoteDataSourceContract());
}

//* Repository => object DataSource
AuthRemoteDataSourceContract injectAuthRemoteDataSourceContract() {
  return AuthRemoteDataSourceImpl(apiManager: injectApiManager());
}

//* DataSource = > object ApiManager
ApiManager injectApiManager() {
  return ApiManager.getInstance();
}
