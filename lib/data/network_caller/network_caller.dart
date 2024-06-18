
import 'dart:convert';
import 'package:http/http.dart';
import 'package:task_manager_project/data/models/network_response.dart';

class NetworkCaller{

  Future<NetworkResponse> getRequest(String url) async{

    try {
      Response response = await get(Uri.parse(url));
      if (response.statusCode == 200) {

        final decodeData = jsonDecode(response.body);
        return NetworkResponse(
            statusCode: response.statusCode,
            isSuccess: true,
            responseData: decodeData,

        );
      }
      else{
        return NetworkResponse(
            statusCode: response.statusCode,
            isSuccess: false,

        );
      }
    }
    catch(e){
       return NetworkResponse(statusCode: -1,
           isSuccess: false,
           errorMessage: e.toString(),
       );
    }

    }


    Future<NetworkResponse> postRequest(String url, Map<String, dynamic> ? body) async{

    try{
      Response response = await post(Uri.parse(url),
          body: jsonEncode(body),
          headers: {'Content-type':'Application/json'}
      );

      if(response.statusCode == 200) {
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: true,
          responseData: null,
        );
      }
          else{
            return NetworkResponse(
                statusCode: response.statusCode,
                isSuccess: false,
                responseData: null
            );
      }
    }

    catch(e){
      return NetworkResponse(
          statusCode: -1,
          isSuccess: false,
          responseData: null,
          errorMessage: e.toString()
      );

    }
  }

}
