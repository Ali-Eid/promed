import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pro_mit/features/home/model/clinic_input_model.dart';

part 'clinic_event.dart';
part 'clinic_state.dart';

class ClinicBloc extends Bloc<ClinicEvent, ClinicState> {
  List<ClinicInputModel> data = [];
  List<Map<String, dynamic>> available = [
    {
      'sun': [],
      'mon': [],
      'tue': [],
      'wed': [],
      'thu': [],
      'fri': [],
      'sat': [],
    }
  ];

  ClinicBloc() : super(ClinicInitial()) {
    on<ClinicEvent>((event, emit) {
      if (event is AddClinicEvent) {
        emit(LoadingState());
        data.add(ClinicInputModel(
            event.model.clinicName,
            event.model.speciality,
            event.model.country,
            event.model.city,
            event.model.region,
            event.model.district,
            event.model.street,
            event.model.phoneNumber));
        emit(SuccessClinicState(data));
      }
    });
  }
}
