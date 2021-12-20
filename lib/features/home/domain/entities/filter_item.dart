import 'package:equatable/equatable.dart';

class FilterItemEntity extends Equatable {
  final String filterName;
  final String imagePath;

  const FilterItemEntity({
    required this.filterName,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [
    filterName,
    imagePath,
  ];
}
