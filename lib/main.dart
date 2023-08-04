import 'package:flutter/material.dart';
import 'package:nukleushive_app/views/mobile_view/auth/login_screen.dart';
import 'package:nukleushive_app/views/mobile_view/auth/signup_screen.dart';
import 'package:nukleushive_app/views/mobile_view/fav_profile_none_screen.dart';
import 'package:nukleushive_app/views/mobile_view/favourite_profiles_screen.dart';
import 'package:nukleushive_app/views/mobile_view/founder/tutorial/tutorial_screen1.dart';
import 'package:nukleushive_app/views/mobile_view/founder/tutorial/tutorial_screen2.dart';
import 'package:nukleushive_app/views/mobile_view/founder/tutorial/tutorial_screen3.dart';
import 'package:nukleushive_app/views/mobile_view/founders_dashboard_screen.dart';
import 'package:nukleushive_app/views/mobile_view/navigator/navigator_screen.dart';
import 'package:nukleushive_app/views/mobile_view/notifications_interview_screen.dart';
import 'package:nukleushive_app/views/mobile_view/notifications_none_screen.dart';
import 'package:nukleushive_app/views/mobile_view/notifications_recommendations_screen.dart';
import 'package:nukleushive_app/views/mobile_view/notifications_results_screen.dart';
import 'package:nukleushive_app/views/mobile_view/others_cofounders_profile_screen.dart';
import 'package:nukleushive_app/views/mobile_view/profile_screen.dart';
import 'package:nukleushive_app/views/mobile_view/scheduled_interviews_completed_screen.dart';
import 'package:nukleushive_app/views/mobile_view/scheduled_interviews_none_screen.dart';
import 'package:nukleushive_app/views/mobile_view/scheduled_interviews_reschedule_interview_screen.dart';
import 'package:nukleushive_app/views/mobile_view/scheduled_interviews_upcoming_screen.dart';
import 'package:nukleushive_app/views/mobile_view/settings_screen.dart';
// import 'package:firebase_core/firebase_core.dart';

// import 'data/enums/flavor_enum.dart'; // Refer it Once
import 'flavors.dart';

// import riverpod
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Copied definition of getCurrentFlavor() from NOVA Code // Refer it Once
String getCurrentFlavor() {
  return const String.fromEnvironment("flavor", defaultValue: "dev");
}

void setFlavor() {
  String flavor = getCurrentFlavor();
  if (flavor == 'prod') {
    F.appFlavor = Flavor.PROD;
  } else {
    F.appFlavor = Flavor.DEV;
  }
}

// void main() {
//   runApp(ProviderScope(child: MyApp()));
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // runApp(MyApp());
  runApp(ProviderScope(child: MyApp()));
}

final navigationProvider = StateProvider((ref) => 'navigatorScreen');
// final navigationProvider =
//     StateProvider((ref) => 'scheduledInterviewsCompletedScreen');
// final navigationProvider =
//     StateProvider((ref) => 'scheduledInterviewsUpcomingScreen');
// final navigationProvider =
//     StateProvider((ref) => 'othersCoFoundersProfileScreen');
// final navigationProvider = StateProvider((ref) => 'favouriteProfilesScreen');

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: 'navigatorScreen',
      // initialRoute: 'scheduledInterviewsCompletedScreen',
      // initialRoute: 'scheduledInterviewsUpcomingScreen',
      // initialRoute: 'othersCoFoundersProfileScreen',
      // initialRoute: 'favouriteProfilesScreen',
      routes: {
        // '/': (context) => NavigatorScreen(),
        'tutorialScreen1': (context) => TutorialScreen1(),
        'tutorialScreen2': (context) => TutorialScreen2(),
        'tutorialScreen3': (context) => TutorialScreen3(),
        'scheduledInterviewsCompletedScreen': (context) =>
            ScheduledInterviewsCompletedScreen(),
        'scheduledInterviewsUpcomingScreen': (context) =>
            ScheduledInterviewsUpcomingScreen(),
        'signupScreen': (context) => SignupScreen(),
        'loginScreen': (context) => LoginScreen(),
        'foundersDashboardScreen': (context) => FoundersDashboardScreen(),
        'favouriteProfilesScreen': (context) => FavouriteProfilesScreen(),
        'profileScreen': (context) => ProfileScreen(),
        'othersCoFoundersProfileScreen': (context) =>
            OthersCoFoundersProfileScreen(),
        'notificationsInterviewScreen': (context) =>
            NotificationsInterviewScreen(),
        'notificationsResultsScreen': (context) => NotificationsResultsScreen(),
        'notificationsRecommendationsScreen': (context) =>
            NotificationsRecommendationsScreen(),
        'settingsScreen': (context) => SettingsScreen(),
      },
      //color: Color(0xFFDFE4D7),
      debugShowCheckedModeBanner: false,
      home: Consumer(builder: (context, ref, _) {
        final currentRoute = ref.watch(navigationProvider);
        switch (currentRoute) {
          case 'navigatorScreen':
            return NavigatorScreen();
          case 'tutorialScreen1':
            return TutorialScreen1();
          case 'tutorialScreen2':
            return TutorialScreen2();
          case 'tutorialScreen3':
            return TutorialScreen3();
          case 'scheduledInterviewsCompletedScreen':
            return ScheduledInterviewsCompletedScreen();
          case 'scheduledInterviewsUpcomingScreen':
            return ScheduledInterviewsUpcomingScreen();
          case 'signupScreen':
            return SignupScreen();
          case 'loginScreen':
            return LoginScreen();
          case 'foundersDashboardScreen':
            return FoundersDashboardScreen();
          case 'favouriteProfilesScreen':
            return FavouriteProfilesScreen();
          case 'profileScreen':
            return ProfileScreen();
          case 'othersCoFoundersProfileScreen':
            return OthersCoFoundersProfileScreen();
          case 'notificationsInterviewScreen':
            return NotificationsInterviewScreen();
          case 'notificationsResultsScreen':
            return NotificationsResultsScreen();
          case 'notificationsRecommendationsScreen':
            return NotificationsRecommendationsScreen();
          case 'settingsScreen':
            return SettingsScreen();

          default:
            return Container();
        }
      }),

      // NavigatorScreen(),
      // FavProfileNoneScreen(),
      // SignupScreen(),
      // LoginScreen(),
      // ProfileScreen(),
      // FoundersDashboardScreen(),
      // FavouriteProfilesScreen(),
      // TutorialScreen1(),
      // TutorialScreen2(),
      // TutorialScreen3(),
      // ScheduledInterviewsUpcomingScreen(),
      // ScheduledInterviewsCompletedScreen(),
      // ScheduledInterviewsRescheduleInterviewScreen(),
      // NotificationsInterviewScreen(),
      // NotificationsRecommendationsScreen(),
      // NotificationsResultsScreen(),
      // NotificationsNoneScreen(),
      // FavProfileNoneScreen(),
      // ScheduledInterviewsNoneScreen(),
    );
  }
}

// Copied Code from NOVA

// import 'dart:async';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
// import 'package:get_it/get_it.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:nova_social/data/models/misc/misc.dart';
// import 'package:nova_social/notifiers/notifiers.dart';
// import 'package:nova_social/nova_social_app.dart';
// import 'package:flutter/material.dart';
// import 'package:nova_social/repository/repository.dart';
// import 'package:nova_social/routes/mobile/mobile_router.dart';
// import 'package:nova_social/routes/routes.dart';
// import 'package:nova_social/services/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:nova_social/utils/utils.dart';
// import 'flavors.dart';
// import 'package:nova_social/data/config/configure_mobile.dart'
//     if (dart.library.html) 'package:nova_social/data/config/configure_web.dart';

// final GetIt getIt = GetIt.instance;

// String getCurrentFlavor() {
//   return const String.fromEnvironment("flavor", defaultValue: "dev");
// }

// FirebaseOptions currentFirebaseWebConfig() {
//   String flavor = getCurrentFlavor();
//   if (flavor == "prod") {
//     return const FirebaseOptions(
//       apiKey: "AIzaSyBocXm5oFmmhQO0CKSdyuxFe_jajNlgOok",
//       appId: "1:899427589392:web:128815920fd1ea74451995",
//       messagingSenderId: "899427589392",
//       projectId: "nova-social-b4f05",
//       storageBucket: "nova-social-b4f05.appspot.com",
//       authDomain: "nova-social-b4f05.firebaseapp.com",
//       measurementId: "G-0CH158QBDE",
//     );
//   }
//   return const FirebaseOptions(
//     apiKey: "AIzaSyBNah7bECo9KRqbG8fnReZGjz_Iy-pjV7k",
//     authDomain: "nova-social---dev.firebaseapp.com",
//     projectId: "nova-social---dev",
//     storageBucket: "nova-social---dev.appspot.com",
//     messagingSenderId: "470634687421",
//     appId: "1:470634687421:web:0dc0e5bbf9df9aee3400d4",
//     measurementId: "G-NB6PT3RMFE",
//   );
// }

// void setFlavor() {
//   String flavor = getCurrentFlavor();
//   if (flavor == 'prod') {
//     F.appFlavor = Flavor.PROD;
//   } else {
//     F.appFlavor = Flavor.DEV;
//   }
// }

// void main() async {
//   setFlavor();
//   WidgetsFlutterBinding.ensureInitialized();
//   await _initFirebase();
//   // Fix: Hive Initialization
//   await _initHive();
//   await _registerHiveTypeAdapters();
//   await _registerHiveBoxes();
//   await _initialize();

//   // runZonedGuarded<Future<void>>(
//   //   () async {
//   //     // Pass all uncaught errors from the framework to Crashlytics.
//   //     FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
//   //     runApp(const NovaSocialApp());
//   //   },
//   //   FirebaseCrashlytics.instance.recordError,
//   // );
//   runApp(const NovaSocialApp());
// }

// Future<void> _initFirebase() async {
//   configureApp();
//   if (kIsWeb.not) {
//     await Firebase.initializeApp();
//     return;
//   }
//   await Firebase.initializeApp(
//     name: getCurrentFlavor(),
//     options: currentFirebaseWebConfig(),
//   );
// }

// Future<void> _initHive() async {
//   if (kIsWeb) {
//     Hive.initFlutter();
//     return;
//   }
//   final dir = await getApplicationDocumentsDirectory();
//   final path = dir.path;
//   HiveEnvironment.dbPath = path;
//   Hive.init(path);
//   // final Directory downloadsDirectory = await getApplicationDocumentsDirectory();
//   // HiveEnvironment.dbPath = downloadsDirectory.path;
//   // Hive.initFlutter(HiveEnvironment.dbPath);
//   // Hive.initFlutter();
// }

// Future<void> _registerHiveTypeAdapters() async {
//   try {
//     // for (var adapter in typeAdapters) {
//     //   Hive.registerAdapter(adapter);
//     // }
//     Hive.registerAdapter(TimestampAdapter());
//     Hive.registerAdapter(ColorAdapter());
//   } catch (e) {
//     Logger.logError('main.dart', e);
//   }
// }

// Future<void> _registerHiveBoxes() async {
//   try {
//     HiveEnvironment.generalBox =
//         await HiveService().openBox(HiveEnvironment.generalBOX);
//     HiveEnvironment.generalBox;
//   } catch (e) {
//     Logger.logError('main.dart', e);
//   }
// }

// Future<void> _initialize() async {
//   await _registerRepo();
//   await _registerNotifiers();
//   AppEnvironment.isMobile
//       ? getIt.registerSingleton<MobileRouter>(MobileRouter())
//       : getIt.registerSingleton<NovaRouter>(NovaRouter());
//   getIt.registerSingleton<FirebaseNotificationService>(
//     FirebaseNotificationService(),
//   );
// }

// Future<void> _registerRepo() async {
//   getIt.registerSingleton<AuthRepository>(AuthRepository());
//   getIt.registerSingleton<OpenAiRepository>(OpenAiRepository());
//   getIt.registerSingleton<ProfileRepository>(ProfileRepository());
//   getIt.registerSingleton<GlobalRepository>(GlobalRepository());
//   getIt.registerSingleton<OnboardingRepository>(OnboardingRepository());
//   getIt.registerSingleton<ConfigRepository>(ConfigRepository());

//   getIt.registerSingleton<FeedRepository>(FeedRepository());

//   getIt.registerSingleton<InternshipRepository>(InternshipRepository());

//   getIt.registerSingleton<ChatBotRepository>(ChatBotRepository());

//   getIt.registerSingleton<PlaygroundRepository>(PlaygroundRepository());

//   getIt.registerSingleton<SearchRepository>(SearchRepository());

//   //
//   getIt.registerSingleton<HuggingFaceRepository>(HuggingFaceRepository());
//   getIt.registerSingleton<ProdiaRepository>(ProdiaRepository());
//   getIt.registerSingleton<StableDiffusionApiRepository>(
//       StableDiffusionApiRepository());
//   getIt.registerSingleton<StabilityAiRepository>(StabilityAiRepository());

//   //
//   getIt.registerSingleton<NotificationRepository>(NotificationRepository());
//   getIt.registerSingleton<ConnectionRepository>(ConnectionRepository());
// }

// Future<void> _registerNotifiers() async {
//   getIt.registerSingleton<AuthNotifier>(
//     AuthNotifier.initialize(
//       getIt<AuthRepository>(),
//     ),
//   );

//   getIt.registerSingleton<OpenAiNotifier>(
//     OpenAiNotifier.initialize(
//       getIt<OpenAiRepository>(),
//     ),
//   );

//   getIt.registerSingleton<ProfileNotifier>(
//     ProfileNotifier.initialize(
//       getIt<ProfileRepository>(),
//       globalRepo: getIt<GlobalRepository>(),
//       configRepo: getIt<ConfigRepository>(),
//       notificationRepo: getIt<NotificationRepository>(),
//       connectionRepo: getIt<ConnectionRepository>(),
//     ),
//   );

//   getIt.registerSingleton<OnboardingNotifier>(
//     OnboardingNotifier.initialize(
//       getIt<OnboardingRepository>(),
//     ),
//   );

//   getIt.registerSingleton<FeedNotifier>(
//     FeedNotifier.initialize(
//       getIt<FeedRepository>(),
//     ),
//   );

//   getIt.registerSingleton<InternshipNotifier>(
//     InternshipNotifier.initialize(
//       getIt<InternshipRepository>(),
//     ),
//   );

//   getIt.registerSingleton<ChatBotNotifier>(
//     ChatBotNotifier.initialize(
//       getIt<ChatBotRepository>(),
//     ),
//   );

//   getIt.registerSingleton<PlaygroundNotifier>(
//     PlaygroundNotifier.initialize(
//       getIt<PlaygroundRepository>(),
//     ),
//   );

//   getIt.registerSingleton<SearchNotifier>(
//     SearchNotifier.initialize(
//       getIt<SearchRepository>(),
//     ),
//   );

//   //..
//   getIt.registerSingleton<HuggingFaceNotifier>(
//     HuggingFaceNotifier.initialize(
//       getIt<HuggingFaceRepository>(),
//     ),
//   );

//   getIt.registerSingleton<ProdiaNotifier>(
//     ProdiaNotifier.initialize(
//       getIt<ProdiaRepository>(),
//     ),
//   );

//   getIt.registerSingleton<StableDiffusionApiNotifier>(
//     StableDiffusionApiNotifier.initialize(
//       getIt<StableDiffusionApiRepository>(),
//     ),
//   );

//   getIt.registerSingleton<StabilityAiNotifier>(
//     StabilityAiNotifier.initialize(
//       getIt<StabilityAiRepository>(),
//     ),
//   );

//   getIt.registerSingleton<NotificationNotifier>(
//     NotificationNotifier.initialize(
//       getIt<NotificationRepository>(),
//     ),
//   );

//   //..
// }
