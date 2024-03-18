import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nami/data/app_urls/app_url.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/repository/home/home_repo_impl.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/invoice/invoice_view_model.dart';
import 'package:nami/presentation/modules/orders/orders_view_model.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //core
  getIt.registerLazySingleton(() =>DioClient(AppURL.kBaseURL, getIt()));

  //repository
    getIt.registerLazySingleton(() =>HomeRepoImpl(dioClient: getIt()));

  // Providers
  getIt.registerLazySingleton(() => HomeProvider(homeRepo:getIt<HomeRepoImpl>()));

  getIt.registerLazySingleton(() => ProductsViewModel());
  getIt.registerLazySingleton(() => OrdersViewModel());
  getIt.registerLazySingleton(() => InvoiceViewModel());
  getIt.registerLazySingleton(() => SharedPref());
  
  //external
   getIt.registerLazySingleton(() => Dio());
}
