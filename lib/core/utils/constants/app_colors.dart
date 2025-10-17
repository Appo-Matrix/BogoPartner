import 'package:flutter/material.dart';

class PAppColors {
  PAppColors._();

  static const Color primary = Color(0xFF79AD46); // Background Color
  static const Color white = Color(0xFFFFFFFF); // Shade 100
  static const Color googleContainerColor = Color(0xFF5F7EC9); // Shade 100
  static const Color facebookContainarColor = Color(0xFF3F51B2); // Shade 100
  static const Color success = Color(0xFF79AD46);

  // Orange Shades (Add in PAppColors class)
  static const Color orange = Color(0xFFFF6A3D);
  static const Color backGroundColor = Color(0xFF79AD46); // S
  /// ─────────────────────────────
  /// Primary Brand Color (Green)
  /// ─────────────────────────────
  static const Color primary50 = Color(0xFFEFF7E6);
  static const Color primary100 = Color(0xFFD9ECC0);
  static const Color primary200 = Color(0xFFBFE096);
  static const Color primary300 = Color(0xFFA6D36B);
  static const Color primary400 = Color(0xFF8CC642);
  static const Color main = Color(0xFF8BC255); // Shade 500 ( Button Primary)
  static const Color primary500 = Color(0xFF79AD46); // main brand color
  static const Color primary600 = Color(0xFF649039);
  static const Color primary700 = Color(0xFF4E722C);
  static const Color primary800 = Color(0xFF39551F);
  static const Color primary900 = Color(0xFF253912);
  static const Color orange100 = Color(0xFFFFF2ED);
  static const Color orange200 = Color(0xFFFFD9CC);
  static const Color orange300 = Color(0xFFFFB8A0);
  static const Color orange400 = Color(0xFFFF9473);
  static const Color orange500 = Color(0xFFFF6A3D); // Main orange
  static const Color orange600 = Color(0xFFE55A2E);
  static const Color orange700 = Color(0xFFCC4A20);
  static const Color orange800 = Color(0xFFB33A12);
  static const Color orange900 = Color(0xFF992A04);

  // Shades of the Primary Green Color
  static const Color lightest = Color(0xFFE6F3DB); // Shade 100
  static const Color lighter = Color(0xFFCBE7B4); // Shade 200
  static const Color light = Color(0xFFAEDC8C); // Shade 300
  static const Color medium = Color(0xFF92D064); // Shade 400

  static const Color black1000 = Color(
    0xFF0A0A0A,
  );
  static const Color black900 = Color(
    0xFF171717,
  ); //
  // Neutral / Black Colors for dark themes and general UI
  static const Color black100 = Color(
    0xFFF5F5F5,
  ); // Lightest gray for backgrounds
  static const Color black200 = Color(
    0xFFE5E5E5,
  ); // Very light gray for subtle borders
  static const Color black300 = Color(
    0xFFD4D4D4,
  ); // Light gray for disabled states
  static const Color black400 = Color(
    0xFFA3A3A3,
  ); // Medium-light gray for placeholders
  static const Color black500 = Color(
    0xFF737373,
  ); // Standard gray for secondary text
  static const Color black600 = Color(0xFF525252); // Dark gray for body text
  static const Color black700 = Color(
    0xFF404040,
  ); // Deeper gray for strong text
  static const Color black800 = Color(
    0xFF262626,
  );



  /// ─────────────────────────────
  /// Base Colors
  /// ─────────────────────────────
  static const Color black = Color(0xFF000000);

  static const Color light = lightBackground;
  static const Color dark = darkBackground;

  /// ─────────────────────────────
  /// Light Theme Base
  /// ─────────────────────────────
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface = Color(0xFFF9FAFB);
  static const Color lightText = Color(0xFF101828);

  /// ─────────────────────────────
  /// Dark Theme Base
  /// ─────────────────────────────
  static const Color darkBackground = Color(0xFF0A0A0A);
  static const Color darkSurface = Color(0xFF171717);
  static const Color darkText = Color(0xFFF5F5F5);

  /// ─────────────────────────────
  /// Neutral Grays
  /// ─────────────────────────────
  static const Color gray50 = Color(0xFFF9FAFB);
  static const Color gray100 = Color(0xFFF2F4F7);
  static const Color gray200 = Color(0xFFEAECF0);
  static const Color gray300 = Color(0xFFD0D5DD);
  static const Color gray400 = Color(0xFF98A2B3);
  static const Color gray500 = Color(0xFF667085);
  static const Color gray600 = Color(0xFF475467);
  static const Color gray700 = Color(0xFF344054);
  static const Color gray800 = Color(0xFF182230);
  static const Color gray900 = Color(0xFF101828);
  /// ─────────────────────────────
  /// Extended Dark Grays
  /// ─────────────────────────────
  static const Color darkGray950 = Color(0xFF0A0A0A); // near black
  static const Color darkGray925 = Color(0xFF121212); // typical Android dark theme base
  static const Color darkGray850 = Color(0xFF1A1A1A);
  static const Color darkGray750 = Color(0xFF222222);


  /// Aliases for readability (Light Grays)
  static const Color lightGray50 = gray50;
  static const Color lightGray100 = gray100;
  static const Color lightGray200 = gray200;
  static const Color lightGray300 = gray300;
  static const Color lightGray400 = gray400;
  static const Color lightGray500 = gray500;
  static const Color lightGray600 = gray600;
  static const Color lightGray700 = gray700;
  static const Color lightGray800 = gray800;
  static const Color lightGray900 = gray900;

  /// Aliases for readability (Dark Grays / Blacks)


  /// ─────────────────────────────
  /// Error (Red) Palette
  /// ─────────────────────────────
  static const Color error50 = Color(0xFFFEF2F2);
  static const Color error100 = Color(0xFFFEE2E2);
  static const Color error200 = Color(0xFFFECACA);
  static const Color error300 = Color(0xFFFCA5A5);
  static const Color error400 = Color(0xFFF87171);
  static const Color error500 = Color(0xFFEF4444); // main error
  static const Color error600 = Color(0xFFDC2626);
  static const Color error700 = Color(0xFFB91C1C);
  static const Color error800 = Color(0xFF991B1B);
  static const Color error900 = Color(0xFF7F1D1D);

  /// ─────────────────────────────
  /// Warning (Amber/Orange) Palette
  /// ─────────────────────────────
  static const Color warning50 = Color(0xFFFFFBEB);


  /// ─────────────────────────────
  /// Success (Green/Teal) Palette
  /// ─────────────────────────────
  static const Color success50 = Color(0xFFECFDF5);
  static const Color success100 = Color(0xFFD1FAE5);
  static const Color success200 = Color(0xFFA7F3D0);
  static const Color success300 = Color(0xFF6EE7B7);
  static const Color success400 = Color(0xFF34D399);
  static const Color success500 = Color(0xFF10B981); // main success
  static const Color success600 = Color(0xFF059669);
  static const Color success700 = Color(0xFF047857);
  static const Color success800 = Color(0xFF065F46);
  static const Color success900 = Color(0xFF064E3B);

  /// ─────────────────────────────
  /// Info (Blue) Palette
  /// ─────────────────────────────
  static const Color info50 = Color(0xFFEFF6FF);
  static const Color info100 = Color(0xFFDBEAFE);
  static const Color info200 = Color(0xFFBFDBFE);
  static const Color info300 = Color(0xFF93C5FD);
  static const Color info400 = Color(0xFF60A5FA);
  static const Color info500 = Color(0xFF3B82F6); // main info
  static const Color info600 = Color(0xFF2563EB);
  static const Color info700 = Color(0xFF1D4ED8);
  static const Color info800 = Color(0xFF1E40AF);
  static const Color info900 = Color(0xFF1E3A8A);
}
