import 'package:pokedex_app/src/model/failures/core_failure.dart';

class ApiFailure implements CoreFailure {
  const ApiFailure(this.message);
  final String message;
}
