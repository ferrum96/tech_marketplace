import 'package:equatable/equatable.dart';

class SaleEntity extends Equatable {
  final int id;
  final int amountOfDiscount;
  final String imagePath;
  final String title;

  const SaleEntity({
    required this.id,
    required this.amountOfDiscount,
    required this.imagePath,
    required this.title,
  });

  @override
  List<Object?> get props => [
        id,
        amountOfDiscount,
        imagePath,
        title,
      ];
}
