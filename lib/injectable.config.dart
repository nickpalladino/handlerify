// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'daos/sessions_dao.dart' as _i6;
import 'db/database.dart' as _i3;
import 'services/session_service.dart' as _i4;
import 'services/session_service_drift.dart' as _i7;
import 'services/session_service_mock.dart' as _i5;

const String _test = 'test';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.HandlerifyDatabase>(_i3.HandlerifyDatabase());
    gh.singleton<_i4.SessionService>(
      _i5.SessionServiceMock(),
      registerFor: {_test},
    );
    gh.singleton<_i6.SessionsDao>(
        _i6.SessionsDao(gh<_i3.HandlerifyDatabase>()));
    gh.singleton<_i4.SessionService>(
      _i7.SessionServiceDrift(gh<_i6.SessionsDao>()),
      registerFor: {_dev},
    );
    return this;
  }
}
