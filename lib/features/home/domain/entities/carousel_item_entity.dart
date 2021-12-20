import 'package:equatable/equatable.dart';

class CarouselItemEntity extends Equatable {
  final int id;
  final String name;
  final String price;
  final String imagePath;


  const CarouselItemEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    price,
    imagePath,
  ];
}
