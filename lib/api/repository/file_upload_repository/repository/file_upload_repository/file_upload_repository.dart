import 'dart:async';
import 'dart:io';

import 'package:winning_info/api/api_base.dart';

class FileUploadRepository extends BaseRepository {
  final _uploadFileApiStreamController = StreamController<ApiBaseResource>();

  Stream<ApiBaseResource> get uploadFileApiStream async* {
    yield* _uploadFileApiStreamController.stream;
  }

  Future<void> uploadFile({
    File? file,
  }) async {
    try {
      await apiClient
          .uploadFileAPI(file: file)
          .then((response) {
        baseResponse(response, _uploadFileApiStreamController);
      }).catchError((onError) {
        baseErrorResponse(onError, _uploadFileApiStreamController);
      });
    } catch (exception) {
      _uploadFileApiStreamController
          .add(ApiBaseResource.somethingWentWrong());
    }
  }
}
