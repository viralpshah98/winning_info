class ApiUrls{
  static String baseUrl = 'https://api.winninginfo.in/wi-birthday-api';

  static const String loginApi='/public/user/login';
  static const String volunteerListApi='/private/volunteer/search';

  static const String stateListApi='/public/state/all';
  static const String addVolunteerApi='/private/volunteer/save';
  static const String deleteVolunteerApi='/private/volunteer/delete';
  static const String updateVolunteerApi='/private/volunteer/update';
  static const String uploadFileApi='/private/volunteer/import-volunteer';
  static const String getAccessTokenApi='/private/user/get-access-token';
}