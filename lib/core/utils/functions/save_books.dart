import 'package:hive/hive.dart';

import '../../../Features/home/domain/entities/book_entity.dart';

void saveBooksData(List<BookEntity> books, String boxName) {
  Box<BookEntity> box = Hive.box<BookEntity>(boxName);
  box.addAll(books);
}
