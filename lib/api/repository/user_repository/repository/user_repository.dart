import 'dart:async';

import 'package:winning_info/api/api_base.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/snack_bar_utils/snack_bar_utils.dart';

class UserRepository extends BaseRepository {
  final _loginWithOTPApiStreamController = StreamController<ApiBaseResource>();

  Stream<ApiBaseResource> get loginWithOTPApiStream async* {
    yield* _loginWithOTPApiStreamController.stream;
  }

  Future<void> loginWithOTP({
    LoginRequestModel? loginRequestModel,
  }) async {
    try {
      await apiClient
          .loginWithAPI(loginRequestModel: loginRequestModel)
          .then((response) {
        baseResponse(response, _loginWithOTPApiStreamController);
      }).catchError((onError) {
        baseErrorResponse(onError, _loginWithOTPApiStreamController);
      });
    } catch (exception) {
      _loginWithOTPApiStreamController
          .add(ApiBaseResource.somethingWentWrong());
    }
  }

  final _volunteerListApiStreamController = StreamController<ApiBaseResource>();

  Stream<ApiBaseResource> get volunteerListApiStream async* {
    yield* _volunteerListApiStreamController.stream;
  }

  Future<void> volunteerList({
    int start = 0,
    int recordSize = 10,
    VolunteerListRequestModel? volunteerListRequestModel,
  }) async {
    _volunteerListApiStreamController.add(ApiBaseResource.loading());

    try {
      await apiClient
          .volunteerListAPI(
        volunteerListRequestModel:
            volunteerListRequestModel ?? const VolunteerListRequestModel(),
        start: start,
        recordSize: recordSize,
      )
          .then((response) {
        baseResponse(response, _volunteerListApiStreamController);
      }).catchError((onError) {
        baseErrorResponse(onError, _volunteerListApiStreamController);
      });
    } catch (exception) {
      _volunteerListApiStreamController
          .add(ApiBaseResource.somethingWentWrong());
    }
  }

  final _addVolunteerApiStreamController = StreamController<ApiBaseResource>();

  Stream<ApiBaseResource> get addVolunteerApiStream async* {
    yield* _addVolunteerApiStreamController.stream;
  }

  Future<void> addVolunteer(
      {AddVolunteersRequestModel? addVolunteersRequestModel}) async {
    _addVolunteerApiStreamController.add(ApiBaseResource.loading());

    try {
      await apiClient
          .addVolunteerAPI(
        addVolunteersRequestModel: addVolunteersRequestModel,
      )
          .then((response) {
        baseResponse(response, _addVolunteerApiStreamController);
      }).catchError((onError) {
        baseErrorResponse(onError, _addVolunteerApiStreamController);
      });
    } catch (exception) {
      _addVolunteerApiStreamController
          .add(ApiBaseResource.somethingWentWrong());
    }
  }

  final _deleteApiStreamController = StreamController<ApiBaseResource>();

  Stream<ApiBaseResource> get deleteApiStream async* {
    yield* _deleteApiStreamController.stream;
  }

  Future<void> delete({int? id}) async {
    _deleteApiStreamController.add(ApiBaseResource.loading());

    try {
      await apiClient.deleteVolunteerAPI(id: id).then((response) {
        baseResponse(response, _deleteApiStreamController);
      }).catchError((onError) {
        baseErrorResponse(onError, _deleteApiStreamController);
      });
    } catch (exception) {
      _deleteApiStreamController.add(ApiBaseResource.somethingWentWrong());
    }
  }

  final _updateVolunteerApiStreamController =
      StreamController<ApiBaseResource>();

  Stream<ApiBaseResource> get updateVolunteerApiStream async* {
    yield* _updateVolunteerApiStreamController.stream;
  }

  Future<void> updateVolunteer({int? id}) async {
    _updateVolunteerApiStreamController.add(ApiBaseResource.loading());

    try {
      await apiClient.updateVolunteerAPI().then((response) {
        baseResponse(response, _updateVolunteerApiStreamController);
      }).catchError((onError) {
        baseErrorResponse(onError, _updateVolunteerApiStreamController);
      });
    } catch (exception) {
      _updateVolunteerApiStreamController
          .add(ApiBaseResource.somethingWentWrong());
    }
  }
}
