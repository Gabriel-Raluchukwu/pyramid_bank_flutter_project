// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IntraBankTransferDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntraBankTransferDTO _$IntraBankTransferDTOFromJson(Map<String, dynamic> json) {
  return IntraBankTransferDTO(
      id: json['Id'] as int,
      createdAt: json['CreatedAt'] as num,
      customerAccountId: json['CustomerAccountId'] as int,
      customerAccountNumber: json['CustomerAccountNumber'] as String,
      description: json['Description'] as String,
      transferAmount: (json['TransferAmount'] as num)?.toDouble(),
      recepientBankId: json['RecipientBankId'] as int,
      recipientBankName: json['RecipientBankName'] as String,
      recipientAccountName: json['RecipientAccountName'] as String,
      recipientAccountNumber: json['RecipientAccountNumber'] as String,
      transactionPin: json['TransactionPin'] as int);
}

Map<String, dynamic> _$IntraBankTransferDTOToJson(
        IntraBankTransferDTO instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'CreatedAt': instance.createdAt,
      'CustomerAccountId': instance.customerAccountId,
      'CustomerAccountNumber': instance.customerAccountNumber,
      'Description': instance.description,
      'TransferAmount': instance.transferAmount,
      'RecipientBankId': instance.recepientBankId,
      'RecipientBankName': instance.recipientBankName,
      'RecipientAccountName': instance.recipientAccountName,
      'RecipientAccountNumber': instance.recipientAccountNumber,
      'TransactionPin': instance.transactionPin
    };
