import 'package:json_annotation/json_annotation.dart';

part 'CustomerLogInDTO.g.dart';

@JsonSerializable()
class CustomerLogInDTO {
  @JsonKey(name: 'UserName')
  String userName;

  @JsonKey(name: 'Password')
  String password;

  CustomerLogInDTO({
    this.userName,
    this.password,
  });

  //Constructors

  factory CustomerLogInDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerLogInDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerLogInDTOToJson(this);
}
