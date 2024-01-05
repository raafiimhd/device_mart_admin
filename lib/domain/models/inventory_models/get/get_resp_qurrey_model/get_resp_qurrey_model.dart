import 'package:json_annotation/json_annotation.dart';

part 'get_resp_qurrey_model.g.dart';

@JsonSerializable()
class GetResponseQurrey {
  int? page;
  int? count;

  GetResponseQurrey({this.page, this.count});

  factory GetResponseQurrey.fromJson(Map<String, dynamic> json) {
    return _$GetResponseQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetResponseQurreyToJson(this);
}
