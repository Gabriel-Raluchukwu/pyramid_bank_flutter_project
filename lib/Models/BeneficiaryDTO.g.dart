// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BeneficiaryDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeneficiaryDTO _$BeneficiaryDTOFromJson(Map<String, dynamic> json) {
  return BeneficiaryDTO(
      id: json['Id'] as int,
      createdAt: json['CreatedAt'] as num,
      customerId: json['CustomerId'] as int,
      customerAccountNumber: json['CustomerAccountNumber'] as String,
      bankId: json['BankId'] as int,
      recipientAccountNumber: json['RecipientAccountNumber'] as String,
      recipientAccountName: json['RecipientAccountName'] as String,
      nickName: json['NickName'] as String);
}

Map<String, dynamic> _$BeneficiaryDTOToJson(BeneficiaryDTO instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'CreatedAt': instance.createdAt,
      'CustomerId': instance.customerId,
      'CustomerAccountNumber': instance.customerAccountNumber,
      'BankId': instance.bankId,
      'RecipientAccountNumber': instance.recipientAccountNumber,
      'RecipientAccountName': instance.recipientAccountName,
      'NickName': instance.nickName
    };
