import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/empty_orders.dart';

class ScreenStateLayout extends StatelessWidget {
  final bool _isEmpty;
  final bool _isLoading;
  //final String? _error;
  // final WidgetBuilder? _errorBuilder;
  final WidgetBuilder? _loadingBuilder;
  // final VoidCallback? _onRetry;
  final WidgetBuilder _builder;

  const ScreenStateLayout({
    Key? key,
    required WidgetBuilder builder,
    bool isEmpty = false,
    String? error,
    bool isLoading = false,
    WidgetBuilder? errorBuilder,
    WidgetBuilder? loadingBuilder,
    VoidCallback? onRetry,
  })  : _isEmpty = isEmpty,
        _isLoading = isLoading,
        //  _error= error,
        //  _errorBuilder = errorBuilder,
        _loadingBuilder = loadingBuilder,
        _builder = builder,
        //  _onRetry = onRetry,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildView(context);
  }

  Widget _buildView(BuildContext context) {
    if (_isLoading) {
      return _loadingBuilder != null
          ? _loadingBuilder(context)
          : const Center(
              child: CircularProgressIndicator(
              color: AppColors.kRed,
            ));
    }
    // else if(_error != null){
    //   return _errorBuilder!=null? _errorBuilder(context): ToastUtils.showToast('error while loading data');
    // }
    else if (_isEmpty) {
      return const EmptyOrders();
    } else {
      return _builder(context);
    }
  }
}
