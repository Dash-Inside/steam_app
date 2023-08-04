import 'package:flutter_test/flutter_test.dart';
import 'package:steam/src/data/datasources/steam_datasource.dart';
import 'package:steam/src/data/models/steam_profile_model.dart';

const String id = 'FEN1XYKUS';
const ProfileModel profileModel = ProfileModel(
  id: '76561199082387856',
  avatar: 'https://avatars.steamstatic.com/fb18b7dc8403a2f63a8a352f2c3ccb63a9ec76f9_full.jpg',
  userName: 'Dead1nside',
);

void main() {
  test('datasourse_test', () async {
    //Act
    final SteamDatasource steamDatasource = SteamDatasourceImpl();

    //Arrange
    final ProfileModel res = await steamDatasource.getModelByID(id);

    //Accert
    expect(res, profileModel);
  });
}
