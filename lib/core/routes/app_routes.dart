
import 'package:go_router/go_router.dart';
import 'package:partner_app/features/company/add_company_screen.dart';

import '../../features/add_company/description/add_options/add_option_screen.dart';
import '../../features/add_company/description/add_options/payment/payment_screen.dart';
import '../../features/add_company/description/add_options/payment/pending_approval/pending_approval_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/otp_verification_done_screen.dart';
import '../../features/auth/screens/otp_verification_screen.dart';
import '../../features/auth/screens/registration_screen.dart';
import '../../features/auth/screens/sign_up_screen.dart';
import '../../features/auth/screens/subscription_duration_screen.dart';
import '../../features/business_details_form/business_details_form_screen.dart';
import '../../features/company/description_detail_screen.dart';
import '../../features/auth/screens/welcome_screen.dart';
import '../../features/splash/splash_screen.dart';

import '../../features/business_details_form/description/description_screen.dart';
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
        path: '/addCompanyScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AddCompanyScreen(), state),
      ),
      GoRoute(
        path: '/addOptionScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight( AddOptionScreen(), state),
      ),
      GoRoute(
        path: '/descriptionDetailScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const DescriptionDetailScreen(), state),
      ),
      GoRoute(
        path: '/splashScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SplashScreen(), state),
      ),
      GoRoute(

        path: '/loginScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const LoginScreen(), state),
      ),
      GoRoute(
        path: '/registrationScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const RegistrationScreen(), state),
      ),
      GoRoute(
        path: '/signUpScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SignUpScreen(), state),
      ),
      GoRoute(
        path: '/subscriptionDurationScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const SubscriptionDurationScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/otpVerificationScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const OtpVerificationScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/otpVerificationDoneScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const OtpVerificationDoneScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/welcomeScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const WelcomeScreen(), state),
      ),
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
    ],
  );
}
