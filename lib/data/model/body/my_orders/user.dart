import 'package:equatable/equatable.dart';

class User extends Equatable {
  final User? user;

  const User({this.user});

  factory User.fromMap(Map<String, dynamic> data) => User(
        user: data['user'] == null
            ? null
            : User.fromMap(data['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'user': user?.toMap(),
      };

  @override
  List<Object?> get props => [user];
}
