import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce/data/api/api_constants.dart';
import 'package:e_commerce/data/models_dto/request/login_requsest_dto.dart';
import 'package:e_commerce/data/models_dto/request/register_request_dto.dart';
import 'package:e_commerce/data/models_dto/response/categories_response_dto.dart';
import 'package:e_commerce/data/models_dto/response/register_response_dto.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  static ApiManager? _instance;

  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

  ApiManager._();

  Future<Either<Errors, RegisterResponseDTO>> register(
      String? name,
      String? email,
      String? password,
      String? rePassword,
      String? phone) async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi)) {
      Uri url = Uri.https(
        ApiConstants.baseUrl,
        ApiConstants.registerEndPoint,
      );
      var registerRequest = RegisterRequestDTO(
          name: name,
          phone: phone,
          email: email,
          password: password,
          rePassword: rePassword);
      var response = await http.post(url, body: registerRequest.toJson());
      var registerResponse = RegisterResponseDTO.fromJson(
        jsonDecode(response.body),
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(registerResponse);
      } else {
        return Left(ServerError(errorMessage: registerResponse.message));
      }
    } else {
      return Left(
          NetworkError(errorMessage: "Please check the internet connection"));
    }
  }

  Future<Either<Errors, RegisterResponseDTO>> login(
      String? userEmail, String? uesrPassword) async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi)) {
      Uri url = Uri.https(
        ApiConstants.baseUrl,
        ApiConstants.signInEndPoint,
      );
      var loginRequest = LoginRequestDTO(
        email: userEmail,
        password: uesrPassword,
      );
      var response = await http.post(url, body: loginRequest.toJson());
      var loginResponse = RegisterResponseDTO.fromJson(
        jsonDecode(response.body),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(loginResponse);
      } else {
        return Left(ServerError(errorMessage: loginResponse.message));
      }
    } else {
      return Left(
          NetworkError(errorMessage: "Please check the internet connection"));
    }
  }

  Future<Either<Errors, CategoriesResponseDTO>> getAllCategories() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi)) {
      Uri url =
          Uri.https(ApiConstants.baseUrl, ApiConstants.cagtegoriesEndPoint);
      var response = await http.get(url);
      var categoriesResponse =
          CategoriesResponseDTO.fromJson(jsonDecode(response.body));

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(categoriesResponse);
      } else {
        return Left(ServerError(errorMessage: categoriesResponse.message));
      }
    } else {
      return Left(
          NetworkError(errorMessage: "Please check the internet connection"));
    }
  }
}
