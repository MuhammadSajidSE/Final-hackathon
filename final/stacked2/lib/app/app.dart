import 'package:stacked2/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stacked2/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked2/ui/views/Signin/signin_view.dart';
import 'package:stacked2/ui/views/home/home_view.dart';
import 'package:stacked2/ui/views/myhome/myhome_view.dart';
import 'package:stacked2/ui/views/signup/signunp_view.dart';
import 'package:stacked2/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: MyhomeView),
    MaterialRoute(page: SigninView ,initial: true),
    MaterialRoute(page: SignunpView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
