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
    return (select(sessions)..orderBy([
      (session) => OrderingTerm(expression: session.startTime, mode: OrderingMode.desc)
    ])).get();
  }

  /*
  Future<List<Session>> getToday() {
    // TODO: this still needs work
    final now = DateTime.now().toUtc();

    return (select(sessions)..where((session) =>
        session.startTime.month.equals(now.month) &
        session.startTime.year.equals(now.year) &
        session.startTime.day.equals(now.day)
    )..orderBy([
          (session) => OrderingTerm(expression: session.startTime, mode: OrderingMode.desc)
    ])).get();
   */

  Future<List<Session>> getToday() {
    return customSelect(
      'select * from sessions where date(start_time, \'unixepoch\', \'localtime\') = date(\'now\', \'localtime\') '
      'order by start_time desc',
      readsFrom: {sessions},
    ).map((session) => sessions.map(session.data)).get();
  }

  Future<int> getTodayCount() {
    return customSelect(
      'select count(*) as num from sessions where date(start_time, \'unixepoch\', \'localtime\') = date(\'now\', \'localtime\')',
      readsFrom: {sessions},
    ).map((session) => session.read<int>('num')).getSingle();
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