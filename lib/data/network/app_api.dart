
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:vgd/data/network/constant.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient{
  factory AppServiceClient(Dio dio,{String baseUrl}) = _AppServiceClient;
}