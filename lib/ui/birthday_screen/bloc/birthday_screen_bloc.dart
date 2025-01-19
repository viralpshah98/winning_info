import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:winning_info/api/api_base.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/snack_bar_utils/snack_bar_utils.dart';

part 'birthday_screen_event.dart';

part 'birthday_screen_state.dart';

class BirthdayScreenBloc
    extends Bloc<BirthdayScreenEvent, BirthdayScreenState> {
  BirthdayScreenBloc() : super(const BirthdayScreenState()) {
    on<BirthdayScreenEvent>(_mapEventToState);
    _userRepository = UserRepository();
    _volunteerListStreamSubscription =
        _userRepository.volunteerListApiStream.listen((event) {
      add(VolunteerListApiBaseResourceEvent(apiBaseResource: event));
    });
  }

  late UserRepository _userRepository;
  late StreamSubscription _volunteerListStreamSubscription;
  List<VolunteerResponseModel> _volunteerResponseModelList = [];

  void _mapEventToState(
      BirthdayScreenEvent event, Emitter<BirthdayScreenState> emit) {
    if (event is GetVolunteerListEvent) {
      return _mapGetVolunteerListEventToState(event, emit);
    } else if (event is VolunteerListApiBaseResourceEvent) {
      return _mapVolunteerListApiBaseResourceEventToState(event, emit);
    } else if (event is SearchTextChangeEvent) {
      return _mapSearchTextChangeEventToState(event, emit);
    } else if (event is FilterOnDateChangeEvent) {
      return _mapFilterOnDateChangeEventToState(event, emit);
    }
  }

  @override
  Future<void> close() {
    _volunteerListStreamSubscription.cancel();
    return super.close();
  }

  void _mapGetVolunteerListEventToState(
      GetVolunteerListEvent event, Emitter<BirthdayScreenState> emit) {
    emit(state.copyWith(greetingsType: event.greetingsType));
    // _userRepository.volunteerList();
    add(
      FilterOnDateChangeEvent(
        selectedDate: DateFormat('dd/MM/yyyy').format(
          DateTime.now(),
        ),
      ),
    );
  }

  void _mapVolunteerListApiBaseResourceEventToState(
      VolunteerListApiBaseResourceEvent event,
      Emitter<BirthdayScreenState> emit) {
    emit(state.copyWith(apiStatus: event.apiBaseResource.apiStatus));
    if (event.apiBaseResource.apiStatus == ApiStatus.success) {
      if (event.apiBaseResource.data != null) {
        final list = (event.apiBaseResource.data as List)
            .map(
              (e) => VolunteerResponseModel.fromJson(e),
            )
            .toList();
        _volunteerResponseModelList = list;

        /* add(
          FilterOnDateChangeEvent(
            selectedDate: DateFormat('dd/MM/yyyy').format(
              DateTime.now(),
            ),
          ),
        );*/

        emit(state.copyWith(volunteerResponseModelList: list));
      }
    } else if (event.apiBaseResource.apiStatus == ApiStatus.error) {
      SnackBarUtils.showSnackBar(
        type: SnackBarType.error,
        message: event.apiBaseResource.message,
      );
    }
  }

  void _mapSearchTextChangeEventToState(
      SearchTextChangeEvent event, Emitter<BirthdayScreenState> emit) {
    /*final list = _volunteerResponseModelList
        .where((element) =>
            (element.firstName?.toLowerCase().contains(event.searchText) ??
                false) ||
            (element.lastName?.toLowerCase().contains(event.searchText) ??
                false))
        .toList();
    emit(state.copyWith(
        searchText: event.searchText, volunteerResponseModelList: list));*/
  }

  void _mapFilterOnDateChangeEventToState(
      FilterOnDateChangeEvent event, Emitter<BirthdayScreenState> emit) {
    final volunteerListRequestModel = VolunteerListRequestModel(
      anniversaryDate: state.greetingsType == GreetingsType.anniversary
          ? event.selectedDate
          : null,
      birthDate: state.greetingsType == GreetingsType.birthday
          ? event.selectedDate
          : null,
    );
    emit(state.copyWith(searchText: event.selectedDate));
    _userRepository.volunteerList(
        volunteerListRequestModel: volunteerListRequestModel);
    /* final list = _volunteerResponseModelList
        .where(
          (element) => state.greetingsType == GreetingsType.birthday
              ? element.birthday == event.selectedDate
              : element.marriageAnniversaryDate == event.selectedDate,
        )
        .toList();
    emit(
      state.copyWith(
        volunteerResponseModelList: list,
        searchText: event.selectedDate,
      ),
    );*/
  }
}
