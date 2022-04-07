import 'package:hive/hive.dart';
import 'package:mony_manager_flutter/models/category/category_modal.dart';

const CATEGORY_DB_NAME = 'category-db';

abstract class CategoryDbFunctions {
  Future<List<CategoryModal>> getCategories();
  Future<void> insertCategory(CategoryModal value);
}

class CategoryDB implements CategoryDbFunctions {
  @override
  Future<void> insertCategory(CategoryModal value) async {
    final _categoryDB = await Hive.openBox<CategoryModal>(CATEGORY_DB_NAME);
    await _categoryDB.add(value);
  }

  @override
  Future<List<CategoryModal>> getCategories() async {
    final _categoryDB = await Hive.openBox<CategoryModal>(CATEGORY_DB_NAME);
    return _categoryDB.values.toList();
  }
}
