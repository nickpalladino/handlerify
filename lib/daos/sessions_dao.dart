import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import '../db/database.dart';

part 'sessions_dao.g.dart';

@singleton
@DriftAccessor(tables: [Sessions])
class SessionsDao extends DatabaseAccessor<HandlerifyDatabase> with _$SessionsDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  SessionsDao(HandlerifyDatabase db) : super(db);

  Future<List<Session>> getAll() {
    return select(sessions).get();
  }

  Future<int> getCount() async {
    Expression<int> countSessions = sessions.id.count();

    // Add the expression to a select statement to evaluate it.
    final query = selectOnly(sessions)..addColumns([countSessions]);
    int? count = await query.map((row) => row.read(countSessions)).getSingle();
    return count != null ? count : 0;
  }

  Future<int> create(SessionsCompanion entry) {
    return into(sessions).insert(entry);
  }


}