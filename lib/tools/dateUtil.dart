
class DateUtil{
  // 2018-09-02 12:11
  static String getDateString(DateTime date){
    return "${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";
  }

  // 2018-09-02
  static String getDateStringYearMonth(DateTime date){
    return "${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')}";
  }

  /// 02:09
  static String getDateStringHourMinute(DateTime date){
    return "${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";
  }

}
