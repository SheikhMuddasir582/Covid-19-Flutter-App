import 'dart:convert';

import 'package:covid_tracker/Services/Utilities/app_url.dart';
import 'package:http/http.dart' as http;

import '../Model/WorldStatesModel.dart';


class StatesServices {
  Future <WorldStatesModel> fetchWorldStatesRecords () async{
    final response= await http.get(Uri.parse(AppUrl.worldStatesApi));

    if(response.statusCode == 200){

      var data= jsonDecode(response.body.toString());
      return WorldStatesModel.fromJson(data);
    }
    else{
      throw Exception('error');
    }
  }

  Future <List<dynamic>> countriesListApi () async{
    var data;
    final response= await http.get(Uri.parse(AppUrl.countriesList));

    if(response.statusCode == 200){

      data= jsonDecode(response.body);
      return data;
    }
    else{
      throw Exception('error');
    }
  }
}