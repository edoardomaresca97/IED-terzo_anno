import 'package:either_dart/src/either.dart';
import 'package:test_endpoint/src/presentation/home/data/datasources/api_service.dart';
import 'package:test_endpoint/src/presentation/home/domain/repositories/api_repository.dart';

class ApiRepositoryImpl extends ApiRepository {
  @override
  Future<Either<Exception, String>> get(String text) async {
    try {
      final res = await ApiService().get(text);
      return Right(res);
    } catch (e) {
      return Left(e as Exception);
    }
  }
}
