import 'package:dio/dio.dart';
import 'package:nami/data/app_urls/app_url.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/dataSource/remote/exception/api_error_handler.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/body/order_cost.dart';
import 'package:nami/data/model/response/body/store_order.dart';
import 'package:nami/data/repository/orders/orders_repo.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DioClient dioClient;
  OrdersRepoImpl({required this.dioClient});

  @override
  Future<ApiResponse> calculateOrderCost(OrderCost orderCost) async {
    try {
      Response response = await dioClient.post(
        AppURL.kCalculateOrderCost,
        data: orderCost.toMap(),
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  @override
  Future<ApiResponse> storeOrder(StoreOrder storeOrder) async {
    try {
      Response response = await dioClient.post(
        AppURL.kStoreOrder,
        data: storeOrder.toMap(),
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  @override
  Future<ApiResponse> myOrders({String? type}) async {
    try {
      Response response = await dioClient
          .get(AppURL.myOrders, queryParameters: {'type': type ?? 'new'});
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
  
}
