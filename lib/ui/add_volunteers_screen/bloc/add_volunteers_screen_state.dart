part of 'add_volunteers_screen_bloc.dart';

class AddVolunteersScreenState extends Equatable with FormzMixin {
  const AddVolunteersScreenState({
    this.apiStatus,
    this.volunteerTypeModel,
    this.searchText = '',
    this.firstName = const FirstName.pure(''),
    this.middleName = '',
    this.lastName = const LastName.pure(''),
    this.countryCode = const CountryCode.pure('+91'),
    this.mobileNumber = const MobileNumber.pure(''),
    this.emailAddress = '',
    this.epicNumber = const EpicNumber.pure(''),
    this.birthday = const Birthday.pure(''),
    this.anniversary = '',
    this.address = const Address.pure(''),
    this.stateName = const StateName.pure(''),
    this.selectedStateModel,
    this.cityName = const CityName.pure(''),
    this.pinCode = const PinCode.pure(''),
    this.stateList = const [],
  });

  final ApiStatus? apiStatus;
  final VolunteerTypeModel? volunteerTypeModel;
  final String searchText;
  final FirstName firstName;
  final String middleName;
  final LastName lastName;
  final CountryCode countryCode;
  final MobileNumber mobileNumber;
  final String emailAddress;
  final EpicNumber epicNumber;
  final Birthday birthday;
  final String anniversary;
  final Address address;
  final StateName stateName;
  final KeyValueResponseModel? selectedStateModel;
  final CityName cityName;
  final PinCode pinCode;
  final List<KeyValueResponseModel> stateList;

  AddVolunteersScreenState copyWith({
    ApiStatus? apiStatus,
    VolunteerTypeModel? volunteerTypeModel,
    String? searchText,
    FirstName? firstName,
    String? middleName,
    LastName? lastName,
    CountryCode? countryCode,
    MobileNumber? mobileNumber,
    String? emailAddress,
    EpicNumber? epicNumber,
    Birthday? birthday,
    String? anniversary,
    Address? address,
    StateName? stateName,
    KeyValueResponseModel? selectedStateModel,
    CityName? cityName,
    PinCode? pinCode,
    List<KeyValueResponseModel>? stateList,
  }) {
    return AddVolunteersScreenState(
      apiStatus: apiStatus ?? this.apiStatus,
      volunteerTypeModel: volunteerTypeModel ?? this.volunteerTypeModel,
      searchText: searchText ?? this.searchText,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      countryCode: countryCode ?? this.countryCode,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      emailAddress: emailAddress ?? this.emailAddress,
      epicNumber: epicNumber ?? this.epicNumber,
      birthday: birthday ?? this.birthday,
      anniversary: anniversary ?? this.anniversary,
      address: address ?? this.address,
      stateName: stateName ?? this.stateName,
      selectedStateModel: selectedStateModel ?? this.selectedStateModel,
      cityName: cityName ?? this.cityName,
      pinCode: pinCode ?? this.pinCode,
      stateList: stateList ?? this.stateList,
    );
  }

  @override
  List<Object?> get props => [
        apiStatus,
        volunteerTypeModel,
        searchText,
        firstName,
        middleName,
        lastName,
        countryCode,
        mobileNumber,
        emailAddress,
        epicNumber,
        birthday,
        anniversary,
        address,
        stateName,
        selectedStateModel,
        cityName,
        pinCode,
        stateList,
      ];

  @override
  List<FormzInput> get inputs => [
        firstName,
        lastName,
        mobileNumber,
        birthday,
        epicNumber,
        address,
        stateName,
        cityName,
        pinCode,
      ];
}
