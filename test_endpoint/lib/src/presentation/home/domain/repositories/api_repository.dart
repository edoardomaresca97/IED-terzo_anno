import 'package:either_dart/either.dart';

abstract class ApiRepository {
  /// get data from API
  Future<Either<Exception, String>> get(String text);
}
