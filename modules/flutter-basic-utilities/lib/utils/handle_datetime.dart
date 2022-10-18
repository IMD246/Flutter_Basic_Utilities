String dayMonthYearFormat({required dynamic data}) {
  final dateTime = DateTime.tryParse(data.toString());
  return "${dateTime!.day.toString()}/${dateTime.month.toString()}/${dateTime.year.toString()}";
}
