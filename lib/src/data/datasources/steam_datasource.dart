import 'dart:convert';

import '../models/steam_profile_model.dart';

import 'package:http/http.dart' as http;

abstract class SteamDatasource {
  Future<ProfileModel> getModelByID(String id);
}

class SteamDatasourceImpl implements SteamDatasource {
  @override
  Future<ProfileModel> getModelByID(String id) async {
    var uri = Uri.https('playerdb.co/api/player/steam/$id');

    print(uri);

    final http.Response response = await http.get(uri);
    final jsonResult = jsonDecode(response.body)['data']['player']['meta'];

    print(jsonResult);

    return ProfileModel(id: '', userName: '', avatar: 'avatar');
  }
}
