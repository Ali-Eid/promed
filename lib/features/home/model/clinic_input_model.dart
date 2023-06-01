class ClinicInputModel {
  String clinicName;
  String speciality;
  String country;
  String city;
  String region;
  String district;
  String street;
  String phoneNumber;
  ClinicInputModel(this.clinicName, this.speciality, this.country, this.city,
      this.region, this.district, this.street, this.phoneNumber);
}

class HoursModel {
  String day;
  String time;
  HoursModel(this.day, this.time);
}
