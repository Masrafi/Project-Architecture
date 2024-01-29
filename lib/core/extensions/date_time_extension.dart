
import 'package:intl/intl.dart';
import 'package:timetable/timetable.dart';

import '../utils/constant/value_constants.dart';

extension DateTimeExtension on DateTime {
  String get _month => month.toString().padLeft(2, '0');

  String get _day => day.toString().padLeft(2, '0');

  String get jaDateFormatted =>
      '${year}${'-'}${_month}${'-'}${_day}${''}';

  String get dateFormatted => DateFormat(DATE_FORMAT_PATTERN).format(this);

  String get nameOfWeekDay {
    switch (weekday) {
      case DateTime.monday:
        return 'MONDAY';
      case DateTime.tuesday:
        return 'TUESDAY';
      case DateTime.wednesday:
        return 'WEDNESDAY';
      case DateTime.thursday:
        return 'THURSDAY';
      case DateTime.friday:
        return 'FRIDAY';
      case DateTime.saturday:
        return 'SATURDAY';
      case DateTime.sunday:
        return 'SUNDAY';
      default:
        return '';
    }
  }

  String get getYearMonth => '${year}${'YEAR'}${_month}${'MONTH'}'; //monthDateTime.getYearMonth,

  String get getYearMonth2 => '${year}/${_month}';

  String get dateFormattedWithWeekDay =>
      '$year${'YEAR'}$_month${'MONTH'}$_day${'DAY'}($nameOfWeekDay)';

  String get dateFormattedWithWeekDay2 => 'WEEKDAY_DATE_FORMATTER';

  String get yyyyMMdd => '${year}-${_month}-${_day}';
  String get yyyyMMdd2 => '${year}/${_month}/${_day}';
  String get ddMMyyyy => '${_day}/${_month}/${year}';

  String get timeFormatted => DateFormat(TIME_FORMAT_PATTERN).format(this);

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  DateTime getUtcDateTime() {
    return DateTimeTimetable.today().copyWith(
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
    );
  }

  DateTime toNormalDateTime() {
    return DateTime(
      year,
      month,
      day,
      hour,
      minute,
    );
  }
}
