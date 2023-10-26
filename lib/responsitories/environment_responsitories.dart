
import 'dart:convert';

import 'package:final_630710332/models/environment.dart';
import 'package:final_630710332/services/api_caller.dart';

class EnvironmentRespository {
  Future<List<Environment>> getEnvironment() async {
    try {
      var result = await ApiCaller().get('https://cpsu-test-api.herokuapp.com/api/1_2566/weather/current?city=bangkok');
      List list = jsonDecode(result);
      List<Environment> environmentList =
          list.map((item) => Environment.fromJson(item)).toList();
      return environmentList;
    } catch (e) {
      rethrow;
    }
  }

}