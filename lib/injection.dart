
import 'package:get_it/get_it.dart';
import 'package:nami/presentation/modules/category/category_view_model.dart';
import 'package:nami/presentation/modules/home/home_view_model.dart';
import 'package:nami/presentation/modules/invoice/invoice_view_model.dart';
import 'package:nami/presentation/modules/orders/orders_view_model.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';

final getIt=GetIt.instance;

Future<void> init()async{
   // Providers
   getIt.registerLazySingleton(() => HomeViewModel());
   getIt.registerLazySingleton(() => CategoryViewModel());
   getIt.registerLazySingleton(() => ProductsViewModel());
   getIt.registerLazySingleton(() => OrdersViewModel());
   getIt.registerLazySingleton(() => InvoiceViewModel());


}