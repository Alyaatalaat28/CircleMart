import 'package:dartz/dartz.dart';
import 'package:nami/data/dataSource/remote/exception/failure.dart';
import 'package:nami/data/model/body/categoris/datum.dart';
import 'package:nami/data/model/body/home_slider/slider.dart';

abstract class HomeRepo{

  Future<Either<Failure,List<Slider>>>getHomeSlider();
  Future<Either<Failure,List<Datum>>>getCategoris();


}