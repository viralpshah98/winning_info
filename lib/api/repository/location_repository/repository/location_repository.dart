import 'dart:async';

import 'package:winning_info/api/api_base.dart';

class LocationRepository extends BaseRepository{
  final _stateListApiStreamController = StreamController<ApiBaseResource>();

  Stream<ApiBaseResource> get stateListApiStream async* {
    yield* _stateListApiStreamController.stream;
  }

  Future<void> stateList() async {
    _stateListApiStreamController.add(ApiBaseResource.loading());

    try {
      await apiClient
          .stateListAPI(countryId: 96)
          .then((response) {
        baseResponse(response, _stateListApiStreamController);
      }).catchError((onError) {
        baseErrorResponse(onError, _stateListApiStreamController);
      });
    } catch (exception) {
      _stateListApiStreamController
          .add(ApiBaseResource.somethingWentWrong());
    }
  }
}