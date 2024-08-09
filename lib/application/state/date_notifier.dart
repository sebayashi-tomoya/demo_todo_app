import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'date_notifier.g.dart';

@riverpod
class DateNotifier extends _$DateNotifier {
  @override
  DateTime build() {
    return DateTime.now();
  }

  void setDate(DateTime newDate) {
    state = newDate;
  }
}