import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../api_endpoints/post_api_service.dart';
import '../repositories/post_repository.dart';
import '../view_models/post_view_model.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // Register Dio
  getIt.registerLazySingleton<Dio>(() => Dio());

  // Register Retrofit API service
  getIt.registerLazySingleton<PostApiService>(() => PostApiService(getIt<Dio>()));

  // Register Repository
  getIt.registerLazySingleton<PostRepository>(() => PostRepository(getIt<PostApiService>()));

  // Register ViewModel
  getIt.registerFactory(() => PostViewModel(getIt<PostRepository>()));
}