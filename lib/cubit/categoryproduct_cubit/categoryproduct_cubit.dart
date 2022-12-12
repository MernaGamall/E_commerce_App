import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'categoryproduct_state.dart';

class CategoryproductCubit extends Cubit<CategoryproductState> {
  CategoryproductCubit() : super(CategoryproductInitial());
}
