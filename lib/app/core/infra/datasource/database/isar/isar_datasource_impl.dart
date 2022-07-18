import 'package:app_task/app/core/domain/exception/failure_exception.dart';
import 'package:app_task/app/core/external/datasource/database/database_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatasourceImpl<T, F, UUID> implements IDatabaseSource<T, F, UUID> {
  Isar? _databaseInstance;

  Future<Isar> _openConnect() async {
    if (_databaseInstance == null) {
      final dir = await getApplicationSupportDirectory();
      _databaseInstance = await Isar.open(
        schemas: [],
        directory: dir.path,
        inspector: true,
      );
    }

    return _databaseInstance!;
  }

  @override
  Future<Either<FailureException, T>> create(T entity) async {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureException, T>> update(T entity) async {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureException, T>> findById(UUID id) async {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureException, List<T>>> findByFilter(F filter) async {
    // TODO: implement findByFilter
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureException, List<T>>> findAll() async {
    // TODO: implement findAll
    throw UnimplementedError();
  }
}
