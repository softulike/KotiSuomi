import 'package:flutter/material.dart';
import 'package:ral_s_application1/presentation/multiplayer_support_screen/multiplayer_support_screen.dart';
import 'package:ral_s_application1/presentation/scoring_screen/scoring_screen.dart';
import 'package:ral_s_application1/presentation/guest_login_screen/guest_login_screen.dart';
import 'package:ral_s_application1/presentation/loyalty_system_screen/loyalty_system_screen.dart';
import 'package:ral_s_application1/presentation/print_screen/print_screen.dart';
import 'package:ral_s_application1/presentation/saved_cards_screen/saved_cards_screen.dart';
import 'package:ral_s_application1/presentation/product_quickview_screen/product_quickview_screen.dart';
import 'package:ral_s_application1/presentation/shipping_address_validation_screen/shipping_address_validation_screen.dart';
import 'package:ral_s_application1/presentation/shipping_charge_calculator_screen/shipping_charge_calculator_screen.dart';
import 'package:ral_s_application1/presentation/shopping_cart_screen/shopping_cart_screen.dart';
import 'package:ral_s_application1/presentation/store_credits_screen/store_credits_screen.dart';
import 'package:ral_s_application1/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:ral_s_application1/presentation/search_screen/search_screen.dart';
import 'package:ral_s_application1/presentation/signup_login_module_screen/signup_login_module_screen.dart';
import 'package:ral_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:ral_s_application1/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:ral_s_application1/presentation/user_account_screen/user_account_screen.dart';
import 'package:ral_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String multiplayerSupportScreen = '/multiplayer_support_screen';

  static const String scoringScreen = '/scoring_screen';

  static const String guestLoginScreen = '/guest_login_screen';

  static const String loyaltySystemScreen = '/loyalty_system_screen';

  static const String printScreen = '/print_screen';

  static const String savedCardsScreen = '/saved_cards_screen';

  static const String productQuickviewScreen = '/product_quickview_screen';

  static const String shippingAddressValidationScreen =
      '/shipping_address_validation_screen';

  static const String shippingChargeCalculatorScreen =
      '/shipping_charge_calculator_screen';

  static const String shoppingCartScreen = '/shopping_cart_screen';

  static const String storeCreditsScreen = '/store_credits_screen';

  static const String wishlistScreen = '/wishlist_screen';

  static const String searchScreen = '/search_screen';

  static const String signupLoginModuleScreen = '/signup_login_module_screen';

  static const String splashScreen = '/splash_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String userAccountScreen = '/user_account_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        multiplayerSupportScreen: MultiplayerSupportScreen.builder,
        scoringScreen: ScoringScreen.builder,
        guestLoginScreen: GuestLoginScreen.builder,
        loyaltySystemScreen: LoyaltySystemScreen.builder,
        printScreen: PrintScreen.builder,
        savedCardsScreen: SavedCardsScreen.builder,
        productQuickviewScreen: ProductQuickviewScreen.builder,
        shippingAddressValidationScreen:
            ShippingAddressValidationScreen.builder,
        shippingChargeCalculatorScreen: ShippingChargeCalculatorScreen.builder,
        shoppingCartScreen: ShoppingCartScreen.builder,
        storeCreditsScreen: StoreCreditsScreen.builder,
        wishlistScreen: WishlistScreen.builder,
        searchScreen: SearchScreen.builder,
        signupLoginModuleScreen: SignupLoginModuleScreen.builder,
        splashScreen: SplashScreen.builder,
        termsAndConditionsScreen: TermsAndConditionsScreen.builder,
        userAccountScreen: UserAccountScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: MultiplayerSupportScreen.builder
      };
}
