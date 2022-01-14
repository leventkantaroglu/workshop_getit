import 'package:get_it/get_it.dart';

import 'abstract_database_service.dart';
import 'firebase_service.dart';
//import 'shared_preferences_service.dart';
import 'logger.dart';

GetIt _serviceLocator = GetIt.instance;

void setupServiceLocator() {
  _serviceLocator.registerSingleton<DatabaseService>(
    //SharedPreferencesService(),
    FirebaseService(),
  );
  _serviceLocator.registerSingleton(Logger());
}

final databaseService = _serviceLocator<DatabaseService>();
final logger = _serviceLocator<Logger>();
