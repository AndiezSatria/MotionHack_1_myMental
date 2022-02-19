part of 'models.dart';

class ScheduleEntity {
  String title;
  String body;
  String time;
  String date;

  ScheduleEntity({
    required this.title,
    required this.time,
    required this.body,
    required this.date,
  });
}

class ScheduleListEntity {
  int id;
  int psychologId;
  List<TimeSchedule> listDate;

  ScheduleListEntity({
    required this.id,
    required this.psychologId,
    required this.listDate,
  });
}

class TimeSchedule {
  String date;
  List<String> time;

  TimeSchedule({
    required this.date,
    required this.time,
  });
}
