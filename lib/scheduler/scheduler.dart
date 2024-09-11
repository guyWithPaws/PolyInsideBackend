class Scheduler {
  static const Duration periodic = Duration(seconds: 100);
  final stream = Stream.periodic(periodic, (count) => count);
}
