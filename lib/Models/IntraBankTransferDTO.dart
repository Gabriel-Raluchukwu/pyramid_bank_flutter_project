import 'package:json_annotation/json_annotation.dart';

part 'IntraBankTransferDTO.g.dart';

@JsonSerializable()
class IntraBankTransferDTO {
  @JsonKey(name: 'Id')
  int id;

  @JsonKey(name: 'CreatedAt')
  num createdAt;

  @JsonKey(name: 'CustomerAccountId')
  int customerAccountId;

  @JsonKey(name: 'CustomerAccountNumber')
  String customerAccountNumber;

  @JsonKey(name: 'Description')
  String description;

  @JsonKey(name: 'TransferAmount')
  double transferAmount;

  @JsonKey(name: 'RecipientBankId')
  int recepientBankId;

  @JsonKey(name: 'RecipientBankName')
  String recipientBankName;

  @JsonKey(name: 'RecipientAccountName')
  String recipientAccountName;

  @JsonKey(name: 'RecipientAccountNumber')
  String recipientAccountNumber;

  @JsonKey(name: 'TransactionPin')
  int transactionPin;

  IntraBankTransferDTO(
      {this.id,
      this.createdAt,
      this.customerAccountId,
      this.customerAccountNumber,
      this.description,
      this.transferAmount,
      this.recepientBankId,
      this.recipientBankName,
      this.recipientAccountName,
      this.recipientAccountNumber,
      this.transactionPin});

  //Constructors

  factory IntraBankTransferDTO.fromJson(Map<String, dynamic> json) =>
      _$IntraBankTransferDTOFromJson(json);

  Map<String, dynamic> toJson() => _$IntraBankTransferDTOToJson(this);
}
