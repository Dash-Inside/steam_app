import '../models/steam_profile_model.dart';

abstract class SteamDatasource {
  Future<ProfileModel> getModelByID(String id);
}

class SteamDatasourceImpl implements SteamDatasource {
  @override
  Future<ProfileModel> getModelByID(String id) {
    // TODO: implement getModelByID
    throw UnimplementedError();
  }
}
