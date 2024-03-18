// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nami/data/app_urls/app_url.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/dataSource/remote/exception/failure.dart';
import 'package:nami/data/model/body/categoris/datum.dart';
import 'package:nami/data/model/body/home_slider/slider.dart';
import 'package:nami/data/repository/home/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  final DioClient dioClient;
    HomeRepoImpl({required this.dioClient});

  //home slider
  @override
  Future<Either<Failure,List<Slider>>>getHomeSlider()async{
    try{
     List<Slider> slider=[];
     var response= await dioClient.get(AppURL.kSliderURI);
     for(var item in response['data']['slider']){
        try{
          slider.add(Slider.fromJson(item));
        }catch(e){
          slider.add(Slider.fromJson(item));
        }
       }
       return right(slider);
     }catch(e){
        if(e is DioError){
          return left(
            ServerFailure.fromDioError(e)
            );
        }
         return left(
            ServerFailure(e.toString())
            );
     }       
    }
  
  //categoris
 @override
 Future<Either<Failure,List<Datum>>>getCategoris()async{
     try{
        List<Datum> category=[];
       var response= await dioClient.get(AppURL.kCategorisURI);
       for(var item in response['data']){
        try{
          category.add(Datum.fromJson(item));
        }catch(e){
          category.add(Datum.fromJson(item));
        }
       }
       return right(category);
     }catch(e){
        if(e is DioError){
          return left(
            ServerFailure.fromDioError(e)
            );
        }
         return left(
            ServerFailure(e.toString())
            );
     }
       
   
  }
  }