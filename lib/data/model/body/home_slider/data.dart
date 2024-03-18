import 'package:equatable/equatable.dart';
import 'package:nami/data/model/body/home_slider/slider.dart';

class Data extends Equatable {
  final List<Slider>? slider;
  final int? notificationCount;

  const Data({this.slider, this.notificationCount});

  factory Data.fromJson(Map<String, dynamic> data) => Data(
        slider: (data['slider'] as List<dynamic>?)
            ?.map((e) => Slider.fromJson(e as Map<String, dynamic>))
            .toList(),
        notificationCount: data['notification_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'slider': slider?.map((e) => e.toJson()).toList(),
        'notification_count': notificationCount,
      };

  @override
  List<Object?> get props {
    return [slider, notificationCount];
  }
}
