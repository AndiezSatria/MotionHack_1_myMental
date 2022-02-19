part of 'models.dart';

class PsychologEntity {
  int id;
  String name;
  int experience;
  String alumni;
  int price;
  int consultationDuration;
  int rating;

  PsychologEntity({
    this.id = 1,
    required this.name,
    required this.experience,
    required this.alumni,
    required this.price,
    required this.consultationDuration,
    required this.rating
  });
}
