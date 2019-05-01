// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MobileTopUpDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileTopUpDTO _$MobileTopUpDTOFromJson(Map<String, dynamic> json) {
  return MobileTopUpDTO(
      id: json['Id'] as int,
      createdAt: json['CreatedAt'] as num,
      mobileNetworkId: json['MobileNetworkId'] as int,
      amount: (json['Amount'] as num)?.toDouble(),
      customerAccountNumber: json['CustomerAccountNumber'] as String,
      transactionPin: json['TransactionPin'] as int);
}

Map<String, dynamic> _$MobileTopUpDTOToJson(MobileTopUpDTO instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'CreatedAt': instance.createdAt,
      'MobileNetworkId': instance.mobileNetworkId,
      'Amount': instance.amount,
      'CustomerAccountNumber': instance.customerAccountNumber,
      'TransactionPin': instance.transactionPin
    };
