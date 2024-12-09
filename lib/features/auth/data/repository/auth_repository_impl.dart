import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/error/server_exception.dart';
import 'package:blog_app/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failure, String>> loginInWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement loginInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      // Await the result of the asynchronous operation
      final String userId = await authRemoteDataSource.signUpWithEmailPassword(
        name: name,
        email: email,
        password: password,
      );

      return right(userId); // Return the resolved String value
    } on ServerException catch (e) {
      return left(Failure(e.message)); // Return failure with the error message
    }
  }
}
