part of 'add_volunteers_screen_bloc.dart';

class AddVolunteersScreenEvent extends Equatable {
  const AddVolunteersScreenEvent();

  @override
  List<Object?> get props => [];
}

class SetVolunteerResponseModel extends AddVolunteersScreenEvent {
  const SetVolunteerResponseModel({required this.volunteerTypeModel});

  final VolunteerTypeModel? volunteerTypeModel;
}

class FirstNameEvent extends AddVolunteersScreenEvent {
  const FirstNameEvent({required this.firstName});

  final String firstName;
}

class LastNameEvent extends AddVolunteersScreenEvent {
  const LastNameEvent({required this.lastName});

  final String lastName;
}

class MiddleEvent extends AddVolunteersScreenEvent {
  const MiddleEvent({required this.middleName});

  final String middleName;
}

class CountryCodeEvent extends AddVolunteersScreenEvent {
  const CountryCodeEvent({required this.countryCode});

  final String countryCode;
}

class MobileNumberEvent extends AddVolunteersScreenEvent {
  const MobileNumberEvent({required this.mobileNumber});

  final String mobileNumber;
}

class EmailEvent extends AddVolunteersScreenEvent {
  const EmailEvent({required this.email});

  final String email;
}

class EpicNumberEvent extends AddVolunteersScreenEvent {
  const EpicNumberEvent({required this.epicNumber});

  final String epicNumber;
}

class BirthdayEvent extends AddVolunteersScreenEvent {
  const BirthdayEvent({required this.birthDay});

  final String birthDay;
}

class MarriageAnniversaryEvent extends AddVolunteersScreenEvent {
  const MarriageAnniversaryEvent({required this.marriageAnniversary});

  final String marriageAnniversary;
}

class AddressEvent extends AddVolunteersScreenEvent {
  const AddressEvent({required this.address});

  final String address;
}

class GetStateListEvent extends AddVolunteersScreenEvent {
  const GetStateListEvent();
}

class StateListApiBaseResourceEvent extends AddVolunteersScreenEvent {
  const StateListApiBaseResourceEvent({
    required this.apiBaseResource,
  });

  final ApiBaseResource apiBaseResource;
}

class StateNameEvent extends AddVolunteersScreenEvent {
  const StateNameEvent({required this.selectedStateModel});

  final KeyValueResponseModel? selectedStateModel;
}

class SearchTextEvent extends AddVolunteersScreenEvent {
  const SearchTextEvent({required this.searchText});

  final String searchText;
}

class CityNameEvent extends AddVolunteersScreenEvent {
  const CityNameEvent({required this.cityName});

  final String cityName;
}

class PinCodeEvent extends AddVolunteersScreenEvent {
  const PinCodeEvent({required this.pinCode});

  final String pinCode;
}

class OnClickAddEvent extends AddVolunteersScreenEvent {
  const OnClickAddEvent();
}

class AddUserApiBaseResourceEvent extends AddVolunteersScreenEvent {
  const AddUserApiBaseResourceEvent({required this.apiBaseResource});

  final ApiBaseResource apiBaseResource;
}
