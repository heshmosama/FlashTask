import 'package:grsia/data/models/UnpaidLeaveAmount/body/my_property.dart'
    as model;

class MyProperty extends model.MyProperty {
  final int? day;
  final int? month;
  final int? year;

  MyProperty({this.day, this.month, this.year})
      : super(day: day, month: month, year: year);
}
