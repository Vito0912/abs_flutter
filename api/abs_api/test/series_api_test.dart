import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for SeriesApi
void main() {
  final instance = AbsApi().getSeriesApi();

  group(SeriesApi, () {
    // Get series
    //
    // Get a series by ID.
    //
    //Future<SeriesWithProgressAndRSS> getSeries(String id, { GetSeriesRequest getSeriesRequest }) async
    test('test getSeries', () async {
      // TODO
    });

    // Update series
    //
    // Update a series by ID.
    //
    //Future<Series> updateSeries(String id, UpdateSeriesRequest updateSeriesRequest) async
    test('test updateSeries', () async {
      // TODO
    });
  });
}
