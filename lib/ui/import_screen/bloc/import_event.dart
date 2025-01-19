part of 'import_bloc.dart';

 class ImportEvent extends Equatable {
  const ImportEvent();

  @override
  List<Object?> get props => [];
}

class UploadFileEvent extends ImportEvent{
  const UploadFileEvent({required this.file});
  final File file;
}

class UploadFileApiBaseResourceEvent extends ImportEvent{
  const UploadFileApiBaseResourceEvent({required this.apiBaseResource});
  final ApiBaseResource apiBaseResource;
}