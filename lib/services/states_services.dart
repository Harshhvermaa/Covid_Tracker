import 'dart:convert';

import 'package:covid_19_app/models/worldmodel_states.dart';
import 'package:covid_19_app/services/utilities/app_url.dart';
import 'package:http/http.dart' as http ;

class WorldStatesViewModel {

  Future<WorldStatesModel> fetchWorldRecords() async {
    final response = await http.get(Uri.parse(Appurl.worldstatesApi));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStatesModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  
  Future<List<dynamic>> countriesListApi() async {
     final response =  await http.get(Uri.parse(Appurl.Countrieslist));
     if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return data;
     }else{
      throw Exception("Error");
     } 
  }


  // Future<WorldStatesModel> fetchworldstatesrecord() async {
  //   final response = await http.get(Uri.parse(Appurl.worldstatesApi));
  

  //   if(response.statusCode == 200){
  //     print("success");
  //       var data = jsonDecode(response.body.toString());
  //     return WorldStatesModel.fromJson(data);
  //   }else{
  //     print("Error");
  //     var data = jsonDecode(response.body.toString());
  //     return WorldStatesModel.fromJson(data);
      
      
      
  //   }
  //   }
}