part of 'import_bloc.dart';

class ImportState extends Equatable {
  const ImportState({
    this.apiStatus,
  });

  final ApiStatus? apiStatus;

  ImportState copyWith({
    ApiStatus? apiStatus,
  }) {
    return ImportState(
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        apiStatus,
      ];
}
