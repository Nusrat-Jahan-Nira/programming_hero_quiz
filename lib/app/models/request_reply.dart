import 'package:get/get.dart';


abstract class Request {
  String? userId;
}

abstract class CachedRequest extends Request {
  /// <summary>
  /// If client has cached previous category data, what is the cache id.
  /// </summary>
  /// <remarks>
  /// if cached data is still valid then server will send a response saying cache id still valid, without the payload.
  /// </remarks>
  String? cacheTokenId;
}


abstract class Response<T> {
  String? errorMessage;
  bool? isSuccessful = false;
  bool? loginNotVerified;
  DateTime? responseTime;
  T? result;
  Response(
      {this.errorMessage,
        this.isSuccessful,
        this.loginNotVerified,
        this.responseTime,
        this.result});

  String ResponseTimeAsText(){
    if (responseTime!=null){
      return responseTime.toString();
    }
    return "";
  }
}
