import 'package:abs_flutter/models/queue.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final queueProvider = StateProvider<List<Queue>>((ref) => []);
