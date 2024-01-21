import 'package:hive/hive.dart';
part 'appInfo.g.dart';

@HiveType(typeId: 0)
class ApplicationInfoModel extends HiveObject {
  @HiveField(0)
  late bool isFirstLaunch;

  @HiveField(1)
  late String appVersion;

  @HiveField(2)
  late String latestVersion;

  @HiveField(3)
  late String firstLaunchDate;
}

