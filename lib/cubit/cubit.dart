import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ninja_id/cubit/states.dart';

class NinjaLevelCubit extends Cubit<NinjaStates> {
  int counter = 0;

  NinjaLevelCubit() : super(NinjaInitialState());

  static NinjaLevelCubit get(context) => BlocProvider.of(context);

  void leveUp() {
    counter++;
    emit(LevelUpState());
  }

  void resetLevel() {
    counter = 0;
    emit(NinjaInitialState());
  }
}
