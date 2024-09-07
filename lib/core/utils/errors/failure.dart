import 'package:dio/dio.dart';

abstract class failure {
  final String errormessage;
  failure(this.errormessage);
}

class serverfailure extends failure {
  serverfailure(super.errormessage);

  factory serverfailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return serverfailure('connectiout time out with api');
      case DioExceptionType.sendTimeout:
        return serverfailure('send time out with api');
      case DioExceptionType.receiveTimeout:
        return serverfailure('recieve time out with api');
      case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      case DioExceptionType.badResponse:
        return serverfailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return serverfailure('request with api was canceld');
      case DioExceptionType.connectionError:
        return serverfailure('connectiout error out with api');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return serverfailure('No Internet Connection');
        } else {
          return serverfailure('un Expected Error,please try again later!');
        }
    }
  }

  factory serverfailure.fromResponse(int? statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return serverfailure(response['error']['message']);
    } else if (statuscode == 404) {
      return serverfailure('Your request is not found,please try later!');
    } else if (statuscode == 500) {
      return serverfailure('Internal server Error,please try later!');
    } else {
      return serverfailure('OOPS There was an Error, please try again');
    }
  }
}
