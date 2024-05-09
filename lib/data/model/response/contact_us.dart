import 'package:equatable/equatable.dart';

class ContactUs extends Equatable {
  final String? name;
  final String? email;
  final String? subject;
  final String? message;
  final String? phone;

  const ContactUs(
      {this.name, this.email, this.subject, this.message, this.phone});

  factory ContactUs.fromMap(Map<String, dynamic> data) => ContactUs(
        name: data['name'] as String,
        email: data['email'] as String,
        subject: data['subject'] as String,
        message: data['message'] as String,
        phone: data['phone'] as String,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'subject': subject,
        'message': message,
        'phone': phone,
      };

  @override
  List<Object?> get props => [name, email, subject, message, phone];
}
