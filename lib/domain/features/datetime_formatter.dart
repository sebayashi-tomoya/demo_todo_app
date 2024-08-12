
import 'package:intl/intl.dart';

class DatetimeFormatter {
  DatetimeFormatter() {
    today = DateTime.now();
    tomorrow = today.add(const Duration(days: 1));
  }
  
  late DateTime today;
  late DateTime tomorrow;

  List<String> weekdays = [
    '(月)','(火)', '(水)', '(木)', '(金)', '(土)', '(日)'
  ];


  /// DateTimeを画面表示用に変換
  String forUI(DateTime? targetDate){
    if (targetDate == null) return "";

    final targetMonthDay = toMonthDay(targetDate);

    if (toMonthDay(today) == targetMonthDay){
      return "今日";
    }
    else if (toMonthDay(tomorrow) == targetMonthDay){
      return "明日";
    }
    else{
      // 曜日の設定
      // `weekday`は1から始まるのでインデックスは`weekday - 1`
      int weekdayNo = targetDate.weekday;
      String weekdayName = weekdays[weekdayNo - 1];
      // MM月dd日(w)に変換
      return '$targetMonthDay$weekdayName';
    }
  }

  String toMonthDay(DateTime date) {
    return  DateFormat('MM月dd日').format(date);
  }
}