import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  // Register ApiService
  getIt.registerSingleton<apiService>(
    apiService(Dio()), // Use 'ApiService' with correct casing
  );

  // Register HomeRepo using ApiService from GetIt
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImplem(getIt<apiService>()),
  );
}
