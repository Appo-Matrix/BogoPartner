import 'package:go_router/go_router.dart';
import 'package:partner_app/features/add_company/add_company_screen.dart';
import 'package:partner_app/features/auth/screens/login_screen.dart';
import 'package:partner_app/features/auth/screens/otp_verification_done_screen.dart';
import 'package:partner_app/features/auth/screens/otp_verification_screen.dart';
import 'package:partner_app/features/auth/screens/registration_screen.dart';
import 'package:partner_app/features/auth/screens/sign_up_screen.dart';
import 'package:partner_app/features/auth/screens/subscription_duration_screen.dart';
import 'package:partner_app/features/offers/screens/add_category_screen.dart';
import 'package:partner_app/features/offers/screens/add_offer_detail_screen.dart';
import 'package:partner_app/features/offers/screens/category_product_list_screen.dart';
import 'package:partner_app/features/offers/screens/create_new_offer_screen.dart';
import 'package:partner_app/features/offers/screens/edit_offer_screen.dart';
import 'package:partner_app/features/offers/screens/offer_guideline_screen.dart';
import 'package:partner_app/features/offers/screens/offer_restriction_screen.dart';
import 'package:partner_app/features/splash/splash_screen.dart';
import '../../features/add_company/description/add_options/add_option_screen.dart';
import '../../features/add_company/description/add_options/payment/payment_screen.dart';
import '../../features/add_company/description/add_options/payment/pending_approval/pending_approval_screen.dart';
import '../../features/add_company/description/description_screen_two.dart';
import '../../features/business_details_form/business_details_form_screen.dart';
import '../../features/company/description_detail_screen.dart';
import '../../features/auth/screens/welcome_screen.dart';
import '../../features/business_details_form/description/description_screen.dart';
import '../../features/offers/screens/offer_menu_management_screen.dart';
import '../../features/second_dashboard/active_subscription/active_subscription_screen.dart';
import '../../features/second_dashboard/ad_setup/ad_setup_screen.dart';
import '../../features/second_dashboard/ads_management/ads_management_screen.dart';
import '../../features/second_dashboard/booking/booking_screen.dart';
import '../../features/second_dashboard/business_setup/business_setup_screen.dart';
import '../../features/second_dashboard/complain/complain_screen.dart';
import '../../features/second_dashboard/contact_support/contact_support_screen.dart';
import '../../features/second_dashboard/invoices/invoices_screen.dart';
import '../../features/second_dashboard/mdify_reservation/modify_reservation_screen.dart';
import '../../features/second_dashboard/offer/offer_screen.dart';
import '../../features/second_dashboard/order_dashboard/order_dashboard_screen.dart';
import '../../features/second_dashboard/order_detail/order__details_screen.dart';
import '../../features/second_dashboard/payment/payments_screen.dart';
import '../../features/second_dashboard/rating/rating_screen.dart';
import '../../features/second_dashboard/reviews/reviews_screen.dart';
import '../../features/second_dashboard/second_dashboard_screen.dart';
import '../../features/second_dashboard/setting/setting_screen.dart';
import '../../features/second_dashboard/shop/shop_screen.dart';
import '../../features/second_dashboard/subscription/subscription_screen.dart';
import '../services/navigation_service.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: NavigationHelper.navigatorKey,
    initialLocation: //'/splashScreen',
        '/offerMenuManagementScreen',
    routes: [
      GoRoute(
        path: '/splashScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SplashScreen(), state),
      ),
      GoRoute(
        path: '/addOptionScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(AddOptionScreen(), state),
      ),
      GoRoute(
        path: '/descriptionDetailScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const DescriptionDetailScreen(),
          state,
        ),
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
      GoRoute(
        path: '/modifyReservationScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const ModifyReservationScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/reviewsScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const ReviewsScreen(), state),
      ),
      GoRoute(
        path: '/complainScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const ComplainScreen(), state),
      ),
      GoRoute(
        path: '/adsManagementScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AdsManagementScreen(), state),
      ),
      GoRoute(
        path: '/adSetupScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AdSetupScreen(), state),
      ),
      GoRoute(
        path: '/offerGuidelineScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const OfferGuidelineScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/offerRestrictionScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const OfferRestrictionScreen(),
          state,
        ),
      ),

      /// warning: fade transition applied on below screen
      GoRoute(
        path: '/offerMenuManagementScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.fade(const OfferMenuManagementScreen(), state),
      ),
      GoRoute(
        path: '/addCategoryScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.fade(const AddCategoryScreen(), state),
      ),
      GoRoute(
        path: '/editOfferScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.fade(const EditOfferScreen(), state),
      ),

      /// warning: fade transition applied on above screen
      GoRoute(
        path: '/categoryProductListScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const CategoryProductListScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/createNewOfferScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const CreateNewOfferScreen(),
          state,
        ),
      ),
      GoRoute(
        path: '/addOfferDetailScreen',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const AddOfferDetailScreen(),
          state,
        ),
      ),
    ],
  );
}
