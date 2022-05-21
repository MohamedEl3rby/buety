import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/noticiation_model.dart';
import '../states/notification_states.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationInitalState());
  static NotificationCubit get(context) => BlocProvider.of(context);
  List<NotificationModel> allNotifications = [];
  DatabaseReference ref = FirebaseDatabase.instance.ref('notifications');
  void listenToNotifications() {
    ref.onValue.listen((event) {
      for (var element in event.snapshot.children) {
        allNotifications = [];
        allNotifications.add(
            NotificationModel.fromRTDB(element.value as Map<dynamic, dynamic>));
        print(allNotifications.length);
      }
      emit(GetNotificationSuccess());
    }).onError((onError) {
      emit(NotificationErrorState());
    });
  }
}
