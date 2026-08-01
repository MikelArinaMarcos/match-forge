import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/players.dart';

part 'players_dao.g.dart';

@DriftAccessor(tables: [Players])
class PlayersDao extends DatabaseAccessor<AppDatabase>
    with _$PlayersDaoMixin {
  PlayersDao(super.database);

  Future<List<Player>> getAllPlayers() {
    return select(players).get();
  }

  Stream<List<Player>> watchAllPlayers() {
    return select(players).watch();
  }

  Future<void> insertPlayer(PlayersCompanion player) {
    return into(players).insert(player);
  }
}