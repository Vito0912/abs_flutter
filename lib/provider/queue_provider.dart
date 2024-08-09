import 'package:abs_api/abs_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final queueProvider = StateProvider<List<LibraryItemBase>>((ref) => []);
