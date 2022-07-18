import 'package:app_task/app/core/domain/exception/failure_exception.dart';
import 'package:dartz/dartz.dart';

abstract class IDatabaseSource<T, F, UUID> {
  Future<Either<FailureException, T>> create(T entity);

  Future<Either<FailureException, T>> update(T entity);

  Future<Either<FailureException, T>> findById(UUID id);

  Future<Either<FailureException, List<T>>> findAll();

  Future<Either<FailureException, List<T>>> findByFilter(F filter);
}