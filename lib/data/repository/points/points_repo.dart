import 'package:nami/data/model/response/base/api_response.dart';

abstract class PointsRepo {
    Future<ApiResponse> getPoints();
}
