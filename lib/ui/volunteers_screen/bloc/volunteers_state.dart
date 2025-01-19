part of 'volunteers_bloc.dart';

class VolunteersState extends Equatable {
  const VolunteersState({
    this.apiStatus,
    this.search = '',
    this.volunteerResponseModelList = const [],
  });

  final ApiStatus? apiStatus;
  final String search;
  final List<VolunteerResponseModel> volunteerResponseModelList;

  VolunteersState copyWith(
      {String? search,
      ApiStatus? apiStatus,
      List<VolunteerResponseModel>? volunteerResponseModelList}) {
    return VolunteersState(
      search: search ?? this.search,
      apiStatus: apiStatus ?? this.apiStatus,
      volunteerResponseModelList:
          volunteerResponseModelList ?? this.volunteerResponseModelList,
    );
  }

  @override
  List<Object?> get props => [
        search,
        apiStatus,
        volunteerResponseModelList,
      ];
}
