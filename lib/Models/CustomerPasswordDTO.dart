import 'package:json_annotation/json_annotation.dart';

part 'CustomerPasswordDTO.g.dart';

@JsonSerializable()
class CustomerPasswordDTO {
  @JsonKey(name: 'OldPassword')
  String oldPassword;

  @JsonKey(name: 'NewPassword')
  String newPassword;

  @JsonKey(name: 'ConfirmPassword')
  String confirmPassword;

  CustomerPasswordDTO({
    this.oldPassword,
    this.newPassword,
    this.confirmPassword,
  });

  //Constructors

  factory CustomerPasswordDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerPasswordDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerPasswordDTOToJson(this);
}
