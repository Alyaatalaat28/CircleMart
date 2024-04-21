class GetCityModel {
  List<CityModel>? data;
  String? message;
  int? code;

  GetCityModel({
    this.data,
    this.message,
    this.code,
  });

  factory GetCityModel.fromJson(Map<String, dynamic> json) => GetCityModel(
        data: json["data"] == null
            ? []
            : List<CityModel>.from(
                json["data"]!.map((x) => CityModel.fromJson(x))),
        message: json["message"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
        "code": code,
      };
}

class CityModel {
  int? id;
  String? title;
  num? deliveryCost;
  int? regionId;

  CityModel({
    this.id,
    this.title,
    this.deliveryCost,
    this.regionId,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        id: json["id"],
        title: json["title"],
        deliveryCost: json["delivery_cost"],
        regionId: json["region_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "delivery_cost": deliveryCost,
        "region_id": regionId,
      };
}
