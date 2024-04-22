import 'package:flutter/material.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/core/utils/show_toast.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/body/order_cost.dart';
import 'package:nami/data/model/response/body/store_order.dart';
import 'package:nami/data/model/response/order_model.dart';
import 'package:nami/data/repository/orders/orders_repo.dart';
import 'package:nami/presentation/modules/invoice/invoice_view.dart';

class OrdersProvider with ChangeNotifier {
  final OrdersRepo ordersRepo;
  OrdersProvider({required this.ordersRepo});

  ///  TextEditingControllers
  TextEditingController noteController = TextEditingController();
  TextEditingController paymentController = TextEditingController();

  ////variables
  bool showCurrentOrders = true;
  double _activeStep = 1;
  OrderModel? _orderCost;
  OrderModel? _storeOrder;
  bool _isLoadingCost = false;
  bool _isLoadingStore = false;
  int _selectedIndex = -1;

  ////getter
  double get activeStep => _activeStep;
  OrderModel? get orderCost => _orderCost;
  OrderModel? get storeOrder => _storeOrder;
  bool get isLoadingCost => _isLoadingCost;
  bool get isLoadingStore => _isLoadingStore;
  int get selectedIndex => _selectedIndex;

  ////orders
  Future<ApiResponse> calculateOrderCost(OrderCost orderCost) async {
    _isLoadingCost = true;
    notifyListeners();
    ApiResponse response = await ordersRepo.calculateOrderCost(orderCost);
    if (response.response != null && response.response?.statusCode == 200) {
      _isLoadingCost = false;
      print("Response data: ${response.response?.data}");
      _orderCost = OrderModel.fromMap(response.response?.data);
      push(
        const InvoiceView(),
      );
    } else if (_orderCost?.code == 422) {
      ToastUtils.showToast(response.response?.data['message']);
    } else {
      print("Response data: ${response.response?.data}");
      _isLoadingCost = false;
      notifyListeners();
    }
    _isLoadingCost = false;
    notifyListeners();
    return response;
  }

  Future<ApiResponse> storOrder(StoreOrder storeOrder) async {
    _isLoadingStore = true;
    notifyListeners();
    ApiResponse response = await ordersRepo.storeOrder(storeOrder);
    if (response.response != null && response.response?.statusCode == 200) {
      _isLoadingStore = false;
      print("Response data: ${response.response?.data}");
      _storeOrder = OrderModel.fromMap(response.response?.data);
    } else if (_storeOrder?.code == 422) {
      ToastUtils.showToast(response.response?.data['message']);
    } else {
      print("Response data: ${response.response?.data}");
      _isLoadingStore = false;
      notifyListeners();
    }
    _isLoadingStore = false;
    notifyListeners();
    return response;
  }

  void toggleOrdersView() {
    showCurrentOrders = !showCurrentOrders;
    notifyListeners();
  }

  void sliderIncrement() {
    _activeStep++;
    if (_activeStep > 6) {
      _activeStep = 6;
    }
    notifyListeners();
  }

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
