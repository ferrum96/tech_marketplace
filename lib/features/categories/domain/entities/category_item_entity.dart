import 'package:equatable/equatable.dart';

class CategoryItemEntity extends Equatable {
  final int id;
  final String productName;
  final String price;
  final String imagePath;

  const CategoryItemEntity({
    required this.id,
    required this.productName,
    required this.price,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [
        id,
        productName,
        price,
        imagePath,
      ];
}
