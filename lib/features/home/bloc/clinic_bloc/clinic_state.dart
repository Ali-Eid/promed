part of 'clinic_bloc.dart';

abstract class ClinicState extends Equatable {
  const ClinicState();

  @override
  List<Object> get props => [];
}

class ClinicInitial extends ClinicState {}

class LoadingState extends ClinicState {}

class SuccessClinicState extends ClinicState {
  final List<ClinicInputModel> data;

  const SuccessClinicState(this.data);
}

class ErrorClinicError extends ClinicState {
  final String message;

  const ErrorClinicError(this.message);
}
