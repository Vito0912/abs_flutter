import 'package:abs_flutter/api/library_items/series.dart';
import 'package:json_annotation/json_annotation.dart';

class SeriesConverter implements JsonConverter<List<Series>?, dynamic> {
  const SeriesConverter();

  @override
  List<Series>? fromJson(dynamic json) {
    if (json == null) {
      return null;
    } else if (json is List) {
      return json
          .map<Series>((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList();
    } else if (json is Map<String, dynamic>) {
      return [Series.fromJson(json)];
    } else {
      throw Exception('Invalid JSON format for series');
    }
  }

  @override
  dynamic toJson(List<Series>? series) {
    if (series == null || series.isEmpty) {
      return null;
    } else if (series.length == 1) {
      return series.first.toJson();
    } else {
      return series.map((e) => e.toJson()).toList();
    }
  }
}
