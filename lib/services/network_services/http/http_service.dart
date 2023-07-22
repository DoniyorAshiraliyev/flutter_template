// import 'dart:convert';
// import 'package:flutter_template/core/errors/exceptions/network_exceptions.dart';
// import 'package:flutter_template/services/network_services/http/apis.dart';
// import 'package:http/http.dart';


// class Network  {
//   Future<Object> methodGet(String api, {
//       String baseUrl = Api.baseUrl}) async {
//     Uri url = Uri.https(baseUrl, "$api");
//     Response response = await get(url, headers: Api.headers);
//     return _ResponseChecker.checkResponseData(response);
//   }
// }

// sealed class _ResponseChecker {
//   static Object checkResponseData(Response response) {
//     switch (response.statusCode) {
//       case 200:
//         continue ok;

//       ok:
//       case 201:
//         return jsonDecode(response.body);

//       case 400:
//         throw BadRequestException(
//             "The request was unacceptable, often due to missing a required parameter");

//       case 401:
//         throw UnauthorizedException("Invalid Access Token");

//       case 403:
//         throw ForbiddenException("Missing permissions to perform request");

//       case 404:
//         throw NotFoundException("The requested resource doesn’t exist");

//       serverError:
//       case 500:
//         throw InternalServerException("Something went wrong on our end");

//       case 503:
//         continue serverError;
//       default:
//         throw Exception("Some thing error");
//     }
//   }
// }


import 'dart:convert';
import 'package:flutter_template/services/network_services/http/apis.dart';
import 'package:http/http.dart';

class HttpService {
 
  


  // Methods
  static Future<String?> GET(String api, Map<String, dynamic> params) async {
    var uri = Uri.https(Api.baseUrl, api, params);
    Response response = await get(uri, headers: Api.headers);
    if(response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

   // Params
  static Map<String, dynamic> paramEmpty() {
    Map<String, String> map = {};
    return map;
  }

  
}