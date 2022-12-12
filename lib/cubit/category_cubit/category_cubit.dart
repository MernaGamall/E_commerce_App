import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task1f/repo/categorey_repository.dart';
import 'package:task1f/model/category_repo_modle.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  void getAllCategories()async {
    final listofcategories = await CategoryRepository().getAllCategories();
    emit(CategorySuccess(listofcategories));
  }
}
