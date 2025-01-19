import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:get/get.dart';
import 'package:winning_info/api/api_base.dart';
import 'package:winning_info/models/models.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/snack_bar_utils/snack_bar_utils.dart';

part 'add_volunteers_screen_event.dart';

part 'add_volunteers_screen_state.dart';

class AddVolunteersScreenBloc
    extends Bloc<AddVolunteersScreenEvent, AddVolunteersScreenState> {
  AddVolunteersScreenBloc() : super(const AddVolunteersScreenState()) {
    on<AddVolunteersScreenEvent>(_mapEventToState);

    _locationRepository = LocationRepository();
    _getStateListStreamSubscription =
        _locationRepository.stateListApiStream.listen((event) {
          add(StateListApiBaseResourceEvent(apiBaseResource: event));
        });

    _userRepository = UserRepository();
    _addVolunteerStreamSubscription =
        _userRepository.addVolunteerApiStream.listen((event) {
          add(AddUserApiBaseResourceEvent(apiBaseResource: event));
        });
    _updateVolunteerStreamSubscription =
        _userRepository.updateVolunteerApiStream.listen((event) {
          add(AddUserApiBaseResourceEvent(apiBaseResource: event));
        });
  }

  late LocationRepository _locationRepository;
  late StreamSubscription _getStateListStreamSubscription;
  List<KeyValueResponseModel> _stateList = [];

  late UserRepository _userRepository;
  late StreamSubscription _addVolunteerStreamSubscription;
  late StreamSubscription _updateVolunteerStreamSubscription;

  void _mapEventToState(AddVolunteersScreenEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    if (event is SetVolunteerResponseModel) {
      return _mapSetVolunteerResponseModelToState(event, emit);
    } else if (event is AddressEvent) {
      return _mapAddressEventToState(event, emit);
    } else if (event is BirthdayEvent) {
      return _mapBirthdayToState(event, emit);
    } else if (event is MarriageAnniversaryEvent) {
      return _mapMarriageAnniversaryEventToState(event, emit);
    } else if (event is CityNameEvent) {
      return _mapCityNameToState(event, emit);
    } else if (event is CountryCodeEvent) {
      return _mapCountryCodeToState(event, emit);
    } else if (event is FirstNameEvent) {
      return _mapFirstNameToState(event, emit);
    } else if (event is LastNameEvent) {
      return _mapLastNameToState(event, emit);
    } else if (event is MiddleEvent) {
      return _mapMiddleEventToState(event, emit);
    } else if (event is MobileNumberEvent) {
      return _mapMobileNumberEventToState(event, emit);
    } else if (event is EpicNumberEvent) {
      return _mapEpicNumberEventToState(event, emit);
    } else if (event is PinCodeEvent) {
      return _mapPinCodeEventToState(event, emit);
    } else if (event is GetStateListEvent) {
      return _mapGetStateListEventToState(event, emit);
    } else if (event is StateListApiBaseResourceEvent) {
      return _mapStateListApiBaseResourceEventToState(event, emit);
    } else if (event is StateNameEvent) {
      return _mapStateNameEventToState(event, emit);
    } else if (event is SearchTextEvent) {
      return _mapSearchTextEventToState(event, emit);
    } else if (event is SearchTextEvent) {
      return _mapSearchTextEventToState(event, emit);
    } else if (event is OnClickAddEvent) {
      return _mapOnClickAddEventToState(event, emit);
    } else if (event is AddUserApiBaseResourceEvent) {
      return _mapAddUserApiBaseResourceEventToState(event, emit);
    }
  }

  @override
  Future<void> close() {
    _getStateListStreamSubscription.cancel();
    _addVolunteerStreamSubscription.cancel();
    _updateVolunteerStreamSubscription.cancel();
    return super.close();
  }

  void _mapAddressEventToState(AddressEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final address = Address.dirty(value: event.address);
    emit(state.copyWith(address: address));
  }

  void _mapBirthdayToState(BirthdayEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final birthDay = Birthday.dirty(value: event.birthDay);
    emit(state.copyWith(birthday: birthDay));
  }

  void _mapCityNameToState(CityNameEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final city = CityName.dirty(value: event.cityName);
    emit(state.copyWith(cityName: city));
  }

  void _mapCountryCodeToState(CountryCodeEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final countryCode = CountryCode.dirty(value: event.countryCode);
    emit(state.copyWith(countryCode: countryCode));
  }

  void _mapFirstNameToState(FirstNameEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final firstName = FirstName.dirty(value: event.firstName);
    emit(state.copyWith(firstName: firstName));
  }

  void _mapLastNameToState(LastNameEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final lastName = LastName.dirty(value: event.lastName);
    emit(state.copyWith(lastName: lastName));
  }

  void _mapMiddleEventToState(MiddleEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    emit(state.copyWith(middleName: event.middleName));
  }

  void _mapMobileNumberEventToState(MobileNumberEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final mobileNumber = MobileNumber.dirty(value: event.mobileNumber);
    emit(state.copyWith(mobileNumber: mobileNumber));
  }

  void _mapEpicNumberEventToState(EpicNumberEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final epicNumber = EpicNumber.dirty(value: event.epicNumber);
    emit(state.copyWith(epicNumber: epicNumber));
  }

  void _mapPinCodeEventToState(PinCodeEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final pinCode = PinCode.dirty(value: event.pinCode);
    emit(state.copyWith(pinCode: pinCode));
  }

  void _mapStateNameEventToState(StateNameEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final stateName =
    StateName.dirty(value: event.selectedStateModel?.value ?? '');
    emit(state.copyWith(
        stateName: stateName, selectedStateModel: event.selectedStateModel));
  }

  void _mapMarriageAnniversaryEventToState(MarriageAnniversaryEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    emit(state.copyWith(anniversary: event.marriageAnniversary));
  }

  void _mapGetStateListEventToState(GetStateListEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    _locationRepository.stateList();
  }

  void _mapStateListApiBaseResourceEventToState(
      StateListApiBaseResourceEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    if (event.apiBaseResource.apiStatus == ApiStatus.success) {
      if (event.apiBaseResource.data != null) {
        final stateList = (event.apiBaseResource.data as List)
            .map((e) => KeyValueResponseModel.fromJson(e))
            .toList();
        _stateList = stateList;
        emit(state.copyWith(stateList: stateList));
      }
    }
    else if (event.apiBaseResource.apiStatus == ApiStatus.error) {
      SnackBarUtils.showSnackBar(
        type: SnackBarType.error,
        message: event.apiBaseResource.message,
      );
    }
  }

  void _mapSearchTextEventToState(SearchTextEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final tempList = _stateList
        .where((element) =>
    element.value
        ?.toLowerCase()
        .contains(event.searchText.toLowerCase()) ??
        false)
        .toList();
    emit(state.copyWith(
      searchText: event.searchText,
      stateList: tempList,
    ));
  }

  void _mapOnClickAddEventToState(OnClickAddEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    final addVolunteersRequestModel = AddVolunteersRequestModel(
      id: state.volunteerTypeModel?.volunteerResponseModel?.id,
      firstName: state.firstName.value,
      middleName: state.middleName.isNotEmpty ? state.middleName : null,
      lastName: state.lastName.value,
      countryCode: const KeyValueResponseModel(key: 91),
      mobile: state.mobileNumber.value,
      email: state.emailAddress.isNotEmpty ? state.emailAddress : null,
      epicNumber: state.epicNumber.value,
      birthDate: state.birthday.value,
      marriageAnniversaryDate:
      state.anniversary.isNotEmpty ? state.anniversary : null,
      addressView: AddressRequestModel(
        stateView: state.selectedStateModel,
        address: state.address.value,
        landmark: state.stateName.value,
        cityName: state.cityName.value,
        pincode: state.pinCode.value,
      ),
    );
    if (state.isValid) {
      if (state.volunteerTypeModel?.volunteerResponseModel != null) {
        _userRepository.addVolunteer(
          addVolunteersRequestModel: addVolunteersRequestModel,
        );
      } else {
        _userRepository.updateVolunteer();
      }
    } else {
      if (state.firstName.value.isEmpty) {
        add(FirstNameEvent(firstName: state.firstName.value));
      } else if (state.lastName.value.isEmpty) {
        add(LastNameEvent(lastName: state.lastName.value));
      } else if (state.mobileNumber.value.isEmpty) {
        add(MobileNumberEvent(mobileNumber: state.mobileNumber.value));
      } else if (state.epicNumber.value.isEmpty) {
        add(EpicNumberEvent(epicNumber: state.epicNumber.value));
      } else if (state.birthday.value.isEmpty) {
        add(BirthdayEvent(birthDay: state.birthday.value));
      } else if (state.address.value.isEmpty) {
        add(AddressEvent(address: state.address.value));
      } else if (state.stateName.value.isEmpty) {
        add(
          StateNameEvent(
            selectedStateModel:
            state.selectedStateModel ?? const KeyValueResponseModel(),
          ),
        );
      } else if (state.cityName.value.isEmpty) {
        add(CityNameEvent(cityName: state.cityName.value));
      } else if (state.pinCode.value.isEmpty) {
        add(PinCodeEvent(pinCode: state.pinCode.value));
      }
    }
  }

  void _mapAddUserApiBaseResourceEventToState(AddUserApiBaseResourceEvent event,
      Emitter<AddVolunteersScreenState> emit) {
    emit(state.copyWith(apiStatus: event.apiBaseResource.apiStatus));
    if (event.apiBaseResource.apiStatus == ApiStatus.success) {
      SnackBarUtils.showSnackBar(
        message: event.apiBaseResource.message,
        type: SnackBarType.success,
      );
      Get.back(result: true);
    } else if (event.apiBaseResource.apiStatus == ApiStatus.error) {
      SnackBarUtils.showSnackBar(
        message: event.apiBaseResource.message,
        type: SnackBarType.error,
      );
    }
  }

  void _mapSetVolunteerResponseModelToState(SetVolunteerResponseModel event,
      Emitter<AddVolunteersScreenState> emit) {
    emit(state.copyWith(volunteerTypeModel: event.volunteerTypeModel));
    if (event.volunteerTypeModel != null) {
      final volunteerModel = event.volunteerTypeModel?.volunteerResponseModel;
      if (volunteerModel != null) {
        add(FirstNameEvent(firstName: volunteerModel.firstName ?? ''));
        add(MiddleEvent(middleName: volunteerModel.middleName ?? ''));
        add(LastNameEvent(lastName: volunteerModel.lastName ?? ''));
        add(MobileNumberEvent(mobileNumber: volunteerModel.mobile ?? ''));
        add(EmailEvent(email: volunteerModel.email ?? ''));
        add(EpicNumberEvent(epicNumber: volunteerModel.epicNumber ?? ''));
        add(BirthdayEvent(birthDay: volunteerModel.birthday ?? ''));
        add(MarriageAnniversaryEvent(
            marriageAnniversary: volunteerModel.marriageAnniversaryDate ?? ''));
        add(AddressEvent(address: volunteerModel.addressView?.address ?? ''));
        add(StateNameEvent(
            selectedStateModel: volunteerModel.addressView?.stateView));
        add(CityNameEvent(
            cityName: volunteerModel.addressView?.cityName ?? ''));
        add(PinCodeEvent(pinCode: volunteerModel.addressView?.pincode ?? ''));
      }
    }
  }
}
