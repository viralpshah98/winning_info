part of 'volunteers_bloc.dart';

class VolunteersEvent extends Equatable {
  const VolunteersEvent();

  @override
  List<Object?> get props => [];
}

class SearchTextEvent extends VolunteersEvent {
  const SearchTextEvent({required this.searchText});

  final String searchText;
}

class GetVolunteersListEvent extends VolunteersEvent {
  const GetVolunteersListEvent();
}

class VolunteersListApiBaseResourceEvent extends VolunteersEvent {
  const VolunteersListApiBaseResourceEvent({required this.apiBaseResource});

  final ApiBaseResource apiBaseResource;
}

class OnClickDeleteEvent extends VolunteersEvent {
  const OnClickDeleteEvent({required this.volunteerResponseModel});

  final VolunteerResponseModel volunteerResponseModel;
}

class DeleteVolunteerApiBaseResourceEvent extends VolunteersEvent {
  const DeleteVolunteerApiBaseResourceEvent({required this.apiBaseResource});

  final ApiBaseResource apiBaseResource;
}


