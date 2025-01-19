part of 'birthday_screen_bloc.dart';

class BirthdayScreenEvent extends Equatable {
  const BirthdayScreenEvent();

  @override
  List<Object?> get props => [];
}

class GetVolunteerListEvent extends BirthdayScreenEvent {
  const GetVolunteerListEvent({required this.greetingsType});

  final GreetingsType greetingsType;
}

class VolunteerListApiBaseResourceEvent extends BirthdayScreenEvent {
  const VolunteerListApiBaseResourceEvent({required this.apiBaseResource});

  final ApiBaseResource apiBaseResource;
}

class SearchTextChangeEvent extends BirthdayScreenEvent {
  const SearchTextChangeEvent({required this.searchText});

  final String searchText;
}

class FilterOnDateChangeEvent extends BirthdayScreenEvent {
  const FilterOnDateChangeEvent({required this.selectedDate});

  final String selectedDate;
}

class FilteredDataApiBaseResourceEvent extends BirthdayScreenEvent {
  const FilteredDataApiBaseResourceEvent({
    required this.apiBaseResource,
  });

  final ApiBaseResource apiBaseResource;
}
