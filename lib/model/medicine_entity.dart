part of 'models.dart';

class MedicineEntity {
  int id;
  String name;
  String imgAsset;
  int price;
  int amount;

  MedicineEntity({
    this.id = 1,
    required this.name,
    required this.price,
    required this.imgAsset,
    required this.amount,
  });
}
