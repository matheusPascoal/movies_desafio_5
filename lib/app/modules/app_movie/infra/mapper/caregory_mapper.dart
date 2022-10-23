import '../../domain/entities/category_entity.dart';

class CategoryMapper {
  CategoryMapper._();

  static CategoryEntity fromMap(Map<String, dynamic> map) {
    return CategoryEntity(id: map['id'], name: map['name']);
  }
}
