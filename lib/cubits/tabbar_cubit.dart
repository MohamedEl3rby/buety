import 'package:bueaty/states/tabbar_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBarCubit extends Cubit<TabBarStates> {
  TabBarCubit() : super(TabBarInitialStates());
  static TabBarCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<bool> activeBody = [
    true,
    false,
    false,
    false,
  ];

  changeIndex(
    int currentIndex,
  ) {
    this.currentIndex = currentIndex;
    activeBody.asMap().forEach((index, value) {
      if (value == true) {
        activeBody[index] = false;
      }
    });
    activeBody[currentIndex] = true;
    emit(TabBarChangeIndexState());
  }
}
