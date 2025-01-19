import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winning_info/api/api_base.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/snack_bar_utils/snack_bar_utils.dart';

part 'volunteers_event.dart';

part 'volunteers_state.dart';

class VolunteersBloc extends Bloc<VolunteersEvent, VolunteersState> {
  VolunteersBloc() : super(const VolunteersState()) {
    on<VolunteersEvent>(_mapEventToState);

    _userRepository = UserRepository();
    _volunteerListStreamSubscription =
        _userRepository.volunteerListApiStream.listen((event) {
      add(VolunteersListApiBaseResourceEvent(apiBaseResource: event));
    });
    _deleteVolunteerStreamSubscription =
        _userRepository.deleteApiStream.listen((event) {
      add(DeleteVolunteerApiBaseResourceEvent(apiBaseResource: event));
    });
  }

  late UserRepository _userRepository;
  late StreamSubscription _volunteerListStreamSubscription;
  late StreamSubscription _deleteVolunteerStreamSubscription;

  late VolunteerResponseModel? _deleteVolunteerResponseModel;
  List<VolunteerResponseModel> _volunteerResponseModelList = [];

  void _mapEventToState(VolunteersEvent event, Emitter<VolunteersState> emit) {
    if (event is SearchTextEvent) {
      return _mapSearchTextEventToState(event, emit);
    } else if (event is GetVolunteersListEvent) {
      return _mapGetVolunteersListEventToState(event, emit);
    } else if (event is VolunteersListApiBaseResourceEvent) {
      return _mapVolunteersListApiBaseResourceEventToState(event, emit);
    } else if (event is OnClickDeleteEvent) {
      return _mapOnClickDeleteEventToState(event, emit);
    } else if (event is DeleteVolunteerApiBaseResourceEvent) {
      return _mapDeleteVolunteerApiBaseResourceEventToState(event, emit);
    }
  }

  @override
  Future<void> close() {
    _volunteerListStreamSubscription.cancel();
    return super.close();
  }

  void _mapSearchTextEventToState(
      SearchTextEvent event, Emitter<VolunteersState> emit) {
    List<VolunteerResponseModel> list = _volunteerResponseModelList
        .where((element) =>
            (element.firstName?.toLowerCase().contains(event.searchText) ??
                false) ||
            (element.lastName?.toLowerCase().contains(event.searchText) ??
                false) ||
            (element.mobile?.toLowerCase().contains(event.searchText) ??
                false) ||
            (element.email?.toLowerCase().contains(event.searchText) ?? false))
        .toList();
    emit(state.copyWith(
        search: event.searchText, volunteerResponseModelList: list));
  }

  void _mapGetVolunteersListEventToState(
      GetVolunteersListEvent event, Emitter<VolunteersState> emit) {
    _userRepository.volunteerList(volunteerListRequestModel: null);
  }

  void _mapVolunteersListApiBaseResourceEventToState(
      VolunteersListApiBaseResourceEvent event, Emitter<VolunteersState> emit) {
    emit(state.copyWith(apiStatus: event.apiBaseResource.apiStatus));
    if (event.apiBaseResource.apiStatus == ApiStatus.success) {
      final list = (event.apiBaseResource.data as List)
          .map((e) => VolunteerResponseModel.fromJson(e))
          .toList();
      _volunteerResponseModelList = list;
      emit(state.copyWith(volunteerResponseModelList: list));
    } else if (event.apiBaseResource.apiStatus == ApiStatus.error) {
      SnackBarUtils.showSnackBar(
        type: SnackBarType.error,
        message: event.apiBaseResource.message,
      );
    } else if (event.apiBaseResource.apiStatus == ApiStatus.unknown) {
      SnackBarUtils.showSnackBar(
        type: SnackBarType.error,
        message: 'Something went wrong',
      );
    }
  }

  void _mapOnClickDeleteEventToState(
      OnClickDeleteEvent event, Emitter<VolunteersState> emit) {
    _deleteVolunteerResponseModel = event.volunteerResponseModel;
    _userRepository.delete(id: event.volunteerResponseModel.id);
  }

  void _mapDeleteVolunteerApiBaseResourceEventToState(
      DeleteVolunteerApiBaseResourceEvent event,
      Emitter<VolunteersState> emit) {
    if (event.apiBaseResource.apiStatus == ApiStatus.success) {
      final list = state.volunteerResponseModelList.toList();
      if (_deleteVolunteerResponseModel != null) {
        list.removeWhere(
            (element) => element.id == _deleteVolunteerResponseModel?.id);
        emit(state.copyWith(volunteerResponseModelList: list));
        _deleteVolunteerResponseModel = null;
        SnackBarUtils.showSnackBar(
          type: SnackBarType.success,
          message: 'Deleted successfully',
        );
      }
    } else if (event.apiBaseResource.apiStatus == ApiStatus.error) {
      SnackBarUtils.showSnackBar(
        type: SnackBarType.error,
        message: event.apiBaseResource.message,
      );
    }
  }
}
