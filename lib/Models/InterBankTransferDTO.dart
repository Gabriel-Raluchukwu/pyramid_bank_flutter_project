import 'package:json_annotation/json_annotation.dart';

part 'InterBankTransferDTO.g.dart';

@JsonSerializable()
class InterBankTransferDTO {
  @JsonKey(name: 'Id')
  int id;

  @JsonKey(name: 'CreatedAt')
  num createdAt;

  @JsonKey(name: 'BanksId')
  int banksId;

  @JsonKey(name: 'BankName')
  String bankName;

  @JsonKey(name: 'CustomerAccountNumber')
  String customerAccountNumber;

  @JsonKey(name: 'Description')
  String description;

  @JsonKey(name: 'TransferAmount')
  double transferAmount;

  @JsonKey(name: 'RecipientAccountName')
  String recipientAccountName;

  @JsonKey(name: 'RecipientAccountNumber')
  String recipientAccountNumber;

  @JsonKey(name: 'TransactionPin')
  int transactionPin;

  InterBankTransferDTO(
      {this.id,
      this.createdAt,
      this.customerAccountNumber,
      this.description,
      this.transferAmount,
      this.recipientAccountName,
      this.recipientAccountNumber,
      this.banksId,
      this.bankName,
      this.transactionPin});

  //Constructors

  factory InterBankTransferDTO.fromJson(Map<String, dynamic> json) =>
      _$InterBankTransferDTOFromJson(json);

  Map<String, dynamic> toJson() => _$InterBankTransferDTOToJson(this);
}
