import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    return await homeRepo.fetchFeaturedBooks(
      pageNumber: param,
    );
  }

  // @override
  // Future<Either<Failure, List<BookEntity>>> call([void param]) async {
  //   return await homeRepo.fetchFeaturedBooks(
  //       //pageNumber: param,
  //       );
  // }
}

// class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
//   final HomeRepo homeRepo;

//   FetchFeaturedBooksUseCase(this.homeRepo);

//   @override
//   Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
//     return homeRepo.fetchFeaturedBooks();
//   }

  // @override
  // Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
  //   return await homeRepo.fetchFeaturedBooks(
  //     pageNumber: param,
  //   );
  // }
// }
