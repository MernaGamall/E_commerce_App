import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'oneproduct_state.dart';

class OneproductCubit extends Cubit<OneproductState> {
  OneproductCubit() : super(OneproductInitial());
}
