import 'package:winning_info/api/api_base.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class VolunteerTypeModel {
  final VolunteerType volunteerType;
  final VolunteerResponseModel? volunteerResponseModel;

  const VolunteerTypeModel({
    this.volunteerType = VolunteerType.add,
    this.volunteerResponseModel,
  });
}
