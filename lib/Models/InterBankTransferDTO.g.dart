// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InterBankTransferDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterBankTransferDTO _$InterBankTransferDTOFromJson(Map<String, dynamic> json) {
  return InterBankTransferDTO(
      id: json['Id'] as int,
      createdAt: json['CreatedAt'] as num,
      customerAccountNumber: json['CustomerAccountNumber'] as String,
      description: json['Description'] as String,
      transferAmount: (json['TransferAmount'] as num)?.toDouble(),
      recipientAccountName: json['RecipientAccountName'] as String,
      recipientAccountNumber: json['RecipientAccountNumber'] as String,
      banksId: json['BanksId'] as int,
      bankName: json['BankName'] as String,
      transactionPin: json['TransactionPin'] as int);
}

Map<String, dynamic> _$InterBankTransferDTOToJson(
        InterBankTransferDTO instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'CreatedAt': instance.createdAt,
      'BanksId': instance.banksId,
      'BankName': instance.bankName,
      'CustomerAccountNumber': instance.customerAccountNumber,
      'Description': instance.description,
      'TransferAmount': instance.transferAmount,
      'RecipientAccountName': instance.recipientAccountName,
      'RecipientAccountNumber': instance.recipientAccountNumber,
      'TransactionPin': instance.transactionPin
    };
