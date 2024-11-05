import 'package:freezed_annotation/freezed_annotation.dart';

part 'days_of_week.freezed.dart';
part 'days_of_week.g.dart';

@freezed
class DaysOfWeek with _$DaysOfWeek {
  const factory DaysOfWeek({
    @JsonKey(name: "Monday") double? monday,
    @JsonKey(name: "Tuesday") double? tuesday,
    @JsonKey(name: "Wednesday") double? wednesday,
    @JsonKey(name: "Thursday") double? thursday,
    @JsonKey(name: "Friday") double? friday,
    @JsonKey(name: "Saturday") double? saturday,
    @JsonKey(name: "Sunday") double? sunday,
  }) = _DaysOfWeek;

  factory DaysOfWeek.fromJson(Map<String, dynamic> json) =>
      _$DaysOfWeekFromJson(json);
}
