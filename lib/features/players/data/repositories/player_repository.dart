import '../../../../core/database/app_database.dart';
import '../../../../core/database/daos/players_dao.dart';

class PlayerRepository {
  PlayerRepository(this._playersDao);

  final PlayersDao _playersDao;

  Future<List<Player>> getAllPlayers() {
    return _playersDao.getAllPlayers();
  }

  Stream<List<Player>> watchAllPlayers() {
    return _playersDao.watchAllPlayers();
  }

  Future<void> insertPlayer(PlayersCompanion player) {
    return _playersDao.insertPlayer(player);
  }
}