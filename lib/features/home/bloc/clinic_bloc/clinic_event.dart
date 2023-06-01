part of 'clinic_bloc.dart';

abstract class ClinicEvent extends Equatable {
  const ClinicEvent();

  @override
  List<Object> get props => [];
}

class AddClinicEvent extends ClinicEvent {
  final ClinicInputModel model;

  const AddClinicEvent(this.model);
}
