import 'package:copy_with_extension/copy_with_extension.dart';

@CopyWith()
class UserModel {
  final String email;
  final String password;
  final String name;

  UserModel({required this.email, required this.password, required this.name});
}
