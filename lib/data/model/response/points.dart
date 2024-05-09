
import 'package:equatable/equatable.dart';

class Points extends Equatable {
  final Data? data;
  final String? message;
  final int? code;

  const Points({this.data, this.message, this.code});

  factory Points.fromMap(Map<String, dynamic> data) => Points(
        data: data['data'] == null
            ? null
            : Data.fromMap(data['data'] as Map<String, dynamic>),
        message: data['message'] as String?,
        code: data['code'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'data': data?.toMap(),
        'message': message,
        'code': code,
      };

  @override
  List<Object?> get props => [data, message, code];
}

class Data extends Equatable {
  final int? points;
  final List<dynamic>? history;

  const Data({this.points, this.history});

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        points: data['points'] as int?,
        history: data['history'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'points': points,
        'history': history,
      };

  @override
  List<Object?> get props => [points, history];
}
