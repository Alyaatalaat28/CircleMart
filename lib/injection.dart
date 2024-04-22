import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/repository/auth/auth_repo_impl.dart';
import 'package:nami/data/repository/auth/save_user_data.dart';
import 'package:nami/data/repository/home/home_repo_impl.dart';
import 'package:nami/data/repository/orders/orders_repo_impl.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //core
  getIt.registerLazySingleton(() => DioClient(getIt(), getIt()));

  //repository
  getIt.registerLazySingleton(() => HomeRepoImpl(dioClient: getIt()));
  getIt.registerLazySingleton(() => AuthRepoImpl(dioClient: getIt()));
  getIt.registerLazySingleton(() => OrdersRepoImpl(dioClient: getIt()));

  // Providers
  getIt.registerLazySingleton(
      () => HomeProvider(homeRepo: getIt<HomeRepoImpl>()));
  getIt.registerLazySingleton(() =>
      AuthProvider(authRepo: getIt<AuthRepoImpl>(), saveUserData: getIt()));

  getIt.registerLazySingleton(
      () => OrdersProvider(ordersRepo: getIt<OrdersRepoImpl>()));
  getIt.registerLazySingleton(() => SharedPref());

  /// External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
  getIt.registerLazySingleton(
      () => SaveUserData(sharedPreferences: getIt(), dioClient: getIt()));
  getIt.registerLazySingleton(() => Dio());
}
