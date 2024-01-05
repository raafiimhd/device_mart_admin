import 'package:freezed_annotation/freezed_annotation.dart';
part 'block_and_unblock_qurrey.g.dart';
@JsonSerializable()
class BlockAndUnblockQurrey {
  @JsonKey(name: 'productID')
  int? id;
  BlockAndUnblockQurrey({
    this.id,
  });
  factory BlockAndUnblockQurrey.fromJson(Map<String, dynamic> json) {
    return _$BlockAndUnblockQurreyFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BlockAndUnblockQurreyToJson(this);
}
