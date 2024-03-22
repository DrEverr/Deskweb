import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
class ActivityData with _$ActivityData {
  factory ActivityData({
    required String key,
    required String activity,
    required String type,
    required int participants,
    required double price,
    required String link,
    required double accessibility,
  }) = _Activity;

  factory ActivityData.fromJson(Map<String, dynamic> json) =>
      _$ActivityDataFromJson(json);
}
