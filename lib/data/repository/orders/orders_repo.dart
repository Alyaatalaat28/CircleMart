import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/body/order_cost.dart';
import 'package:nami/data/model/response/body/store_order.dart';

abstract class OrdersRepo {
  Future<ApiResponse> calculateOrderCost(OrderCost orderCost);
  Future<ApiResponse> storeOrder(StoreOrder storeOrder);
}
