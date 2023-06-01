import 'package:bloc/bloc.dart';

class ChangeTextCubit extends Cubit<String> {
  ChangeTextCubit() : super('');

  String date = '----';
  String toTime = '----';
  void changeFromTime(String time) {
    date = time;
    emit(date);
  }

  void changeToTime(String time) {
    toTime = time;
    emit(toTime);
  }
}
