import 'package:go_router/go_router.dart';
import '../../features/add_company/add_company_screen.dart';
import '../../features/add_company/description/add_caption/add_options_screen.dart';
import '../../features/add_company/description/description_screen_two.dart';
import '../../features/business_details_form/business_details_form_screen.dart';
import '../../features/business_details_form/description/add_options/add_option_screen.dart';
import '../../features/business_details_form/description/add_options/payment/payment_screen.dart';
import '../../features/business_details_form/description/add_options/payment/pending_approval/pending_approval_screen.dart';
import '../../features/business_details_form/description/description_screen.dart';
import '../../features/second_dashboard/active_subscription/active_subscription_screen.dart';
import '../../features/second_dashboard/booking/booking_screen.dart';
import '../../features/second_dashboard/business_setup/business_setup_screen.dart';
import '../../features/second_dashboard/contact_support/contact_support_screen.dart';
import '../../features/second_dashboard/invoices/invoices_screen.dart';
import '../../features/second_dashboard/offer/offer_screen.dart';
import '../../features/second_dashboard/order_dashboard/order_dashboard_screen.dart';
import '../../features/second_dashboard/order_detail/order__details_screen.dart';
import '../../features/second_dashboard/payment/payments_screen.dart';
import '../../features/second_dashboard/rating/rating_screen.dart';
import '../../features/second_dashboard/registration/registration_screen.dart';
import '../../features/second_dashboard/second_dashboard_screen.dart';
import '../../features/second_dashboard/setting/setting_screen.dart';
import '../../features/second_dashboard/shop/shop_screen.dart';
import '../../features/second_dashboard/subscription/subscription_screen.dart';
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
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const BusinessDetailsFormScreen(),
          state,
        ),
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
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const PendingApprovalScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/addCompanyScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AddCompanyScreen(), state),
      ),
      GoRoute(
        path: '/descriptionScreenTwo',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const DescriptionScreenTwo(),
          state,
        ),
      ),
      GoRoute(
        path: '/addOptionsScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AddOptionsScreen(), state),
      ),
      GoRoute(
        path: '/secondDashboardScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const SecondDashboardScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/offerScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const OfferScreen(), state),
      ),
      GoRoute(
        path: '/paymentsScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const PaymentsScreen(), state),
      ),
      GoRoute(
        path: '/settingScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SettingScreen(), state),
      ),
      GoRoute(
        path: '/shopScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const ShopScreen(), state),
      ),
      GoRoute(
        path: '/registrationScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const RegistrationScreen(), state),
      ),
      GoRoute(
        path: '/businessSetupScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const BusinessSetupScreen(), state),
      ),
      GoRoute(
        path: '/invoicesScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const InvoicesScreen(), state),
      ),
      GoRoute(
        path: '/subscriptionScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SubscriptionScreen(), state),
      ),
      GoRoute(
        path: '/activeSubscriptionScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const ActiveSubscriptionScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/contactSupportScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const ContactSupportScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/orderDashboardScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const OrderDashboardScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/orderDetailsScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const OrderDetailsScreen(), state),
      ),
      GoRoute(
        path: '/ratingScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const RatingScreen(), state),
      ),
      GoRoute(
        path: '/bookingScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const BookingScreen(), state),
      ),
    ],
  );
}
