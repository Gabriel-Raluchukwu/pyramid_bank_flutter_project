import 'package:json_annotation/json_annotation.dart';

part 'MobileTopUpDTO.g.dart';

@JsonSerializable()
class MobileTopUpDTO {
  @JsonKey(name: 'Id')
  int id;

  @JsonKey(name: 'CreatedAt')
  num createdAt;

  @JsonKey(name: 'MobileNetworkId')
  int mobileNetworkId;

  @JsonKey(name: 'MobileNumber')
  String mobileNumber;

  @JsonKey(name: 'Amount')
  double amount;

  @JsonKey(name: 'CustomerAccountNumber')
  String customerAccountNumber;

  @JsonKey(name: 'TransactionPin')
  int transactionPin;

  MobileTopUpDTO({
    this.id,
    this.createdAt,
    this.mobileNetworkId,
    this.amount,
    this.customerAccountNumber,
    this.transactionPin,
  });

  //Constructors

  factory MobileTopUpDTO.fromJson(Map<String, dynamic> json) =>
      _$MobileTopUpDTOFromJson(json);

  Map<String, dynamic> toJson() => _$MobileTopUpDTOToJson(this);
}
