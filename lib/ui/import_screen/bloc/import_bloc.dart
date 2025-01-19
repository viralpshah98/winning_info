import 'dart:async';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:winning_info/api/api_base.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/snack_bar_utils/snack_bar_utils.dart';

part 'import_event.dart';

part 'import_state.dart';

class ImportBloc extends Bloc<ImportEvent, ImportState> {
  ImportBloc() : super(const ImportState()) {
    on<ImportEvent>(_mapEventToState);
    _fileUploadRepository = FileUploadRepository();
    _fileUploadStreamSubscription =
        _fileUploadRepository.uploadFileApiStream.listen(
      (event) {
        add(
          UploadFileApiBaseResourceEvent(
            apiBaseResource: event,
          ),
        );
      },
    );
  }

  late FileUploadRepository _fileUploadRepository;
  late StreamSubscription _fileUploadStreamSubscription;

  void _mapEventToState(ImportEvent event, Emitter<ImportState> emit) {
    if (event is UploadFileEvent) {
      return _mapUploadFileEventToState(event, emit);
    } else if (event is UploadFileApiBaseResourceEvent) {
      return _mapUploadFileApiBaseResourceEventToState(event, emit);
    }
  }

  @override
  Future<void> close() {
    _fileUploadStreamSubscription.cancel();
    return super.close();
  }

  void _mapUploadFileEventToState(
      UploadFileEvent event, Emitter<ImportState> emit) async {
      _fileUploadRepository.uploadFile(file: event.file);
  }

  void _mapUploadFileApiBaseResourceEventToState(
      UploadFileApiBaseResourceEvent event, Emitter<ImportState> emit) {
    emit(state.copyWith(apiStatus: event.apiBaseResource.apiStatus));
    if (event.apiBaseResource.apiStatus == ApiStatus.success) {
      SnackBarUtils.showSnackBar(
        type: SnackBarType.success,
        message: event.apiBaseResource.message,
      );
      Get.back();
    } else if (event.apiBaseResource.apiStatus == ApiStatus.error) {
      SnackBarUtils.showSnackBar(
        type: SnackBarType.error,
        message: event.apiBaseResource.message,
      );
    }
  }
}
