import 'package:go_router/go_router.dart';
import '../../features/add_company/add_company_screen.dart';
import '../../features/add_company/description/add_caption/add_options_screen.dart';
import '../../features/add_company/description/description_screen_two.dart';
import '../../features/business_details_form/business_details_form_screen.dart';
import '../../features/business_details_form/description/add_options/add_option_screen.dart';
import '../../features/business_details_form/description/add_options/payment/payment_screen.dart';
import '../../features/business_details_form/description/add_options/payment/pending_approval/pending_approval_screen.dart';
import '../../features/business_details_form/description/description_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../services/navigation_service.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: NavigationHelper.navigatorKey,
    initialLocation: '/splashScreen',
    routes: [
      GoRoute(
        path: '/splashScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SplashScreen(), state),
      ),
      GoRoute(
        path: '/businessDetailsFormScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const BusinessDetailsFormScreen(), state),
      ),
      GoRoute(
        path: '/descriptionScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const DescriptionScreen(), state),
      ),
      GoRoute(
        path: '/addOptionScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AddOptionScreen(), state),
      ),
      GoRoute(
        path: '/paymentScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const PaymentScreen(), state),
      ),
      GoRoute(
        path: '/pendingApprovalScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const PendingApprovalScreen(), state),
      ),
      GoRoute(
        path: '/addCompanyScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AddCompanyScreen(), state),
      ),
      GoRoute(
        path: '/descriptionScreenTwo',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const DescriptionScreenTwo(), state),
      ),
      GoRoute(
        path: '/addOptionsScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AddOptionsScreen(), state),
      ),
    ],
  );
}
