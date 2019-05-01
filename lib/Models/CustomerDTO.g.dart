// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDTO _$CustomerDTOFromJson(Map<String, dynamic> json) {
  return CustomerDTO(
      id: json['Id'] as int,
      createdAt: json['CreatedAt'] as num,
      userName: json['Username'] as String,
      customerAccountNumber: json['CustomerAccountNumber'] as String,
      password: json['Password'] as String,
      confirmPassword: json['ConfirmPassword'] as String,
      verificationCode: json['VerificationCode'] as int);
}

Map<String, dynamic> _$CustomerDTOToJson(CustomerDTO instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'CreatedAt': instance.createdAt,
      'Username': instance.userName,
      'CustomerAccountNumber': instance.customerAccountNumber,
      'Password': instance.password,
      'ConfirmPassword': instance.confirmPassword,
      'VerificationCode': instance.verificationCode
    };
