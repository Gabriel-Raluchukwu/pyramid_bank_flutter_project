import 'package:json_annotation/json_annotation.dart';

part 'CustomerTransactionPinDTO.g.dart';

@JsonSerializable()
class CustomerTransactionPinDTO {
  @JsonKey(name: 'OldTransactionPin')
  int oldTransactionPin;

  @JsonKey(name: 'NewTransactionPin')
  int newTransactionPin;

  @JsonKey(name: 'ConfirmTransactionPin')
  int confirmTransactionPin;

  CustomerTransactionPinDTO({
    this.oldTransactionPin,
    this.newTransactionPin,
    this.confirmTransactionPin,
  });

  //Constructors

  factory CustomerTransactionPinDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerTransactionPinDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerTransactionPinDTOToJson(this);
}
