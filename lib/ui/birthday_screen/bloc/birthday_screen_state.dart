part of 'birthday_screen_bloc.dart';

class BirthdayScreenState extends Equatable {
  const BirthdayScreenState({
    this.apiStatus,
    this.volunteerResponseModelList = const [],
    this.searchText = '',
    this.greetingsType,
  });

  final ApiStatus? apiStatus;
  final List<VolunteerResponseModel> volunteerResponseModelList;
  final String searchText;
  final GreetingsType? greetingsType;

  BirthdayScreenState copyWith({
    ApiStatus? apiStatus,
    List<VolunteerResponseModel>? volunteerResponseModelList,
    String? searchText,
    GreetingsType? greetingsType,
  }) {
    return BirthdayScreenState(
      apiStatus: apiStatus ?? this.apiStatus,
      volunteerResponseModelList:
          volunteerResponseModelList ?? this.volunteerResponseModelList,
      searchText: searchText ?? this.searchText,
      greetingsType: greetingsType ?? this.greetingsType,
    );
  }

  @override
  List<Object?> get props => [
        apiStatus,
        volunteerResponseModelList,
        searchText,
        greetingsType,
      ];
}
