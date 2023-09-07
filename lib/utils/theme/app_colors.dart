import 'package:ciname_tickets_booking/utils/theme/figma_colors.dart';
import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors._({
    required this.mainSecondary,
    required this.mainPrimary,
    required this.mainSecondaryPale,
    required this.mainPrimaryPale,
    required this.baseBlack,
    required this.baseWhite,
    required this.baseGreenGray,
    required this.baseGray,
    required this.baseOrange,
    required this.baseRed,
    required this.baseGold,
    required this.baseYellow,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.textPrimary,
    required this.separatePrimary,
    required this.separateSecondary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textLink,
    required this.uniqueAccent,
    required this.uniqueDialogBg,
    required this.uniqueBadge,
    required this.uniqueUsedCoupon,
    required this.textRedTrackingDialog,
    required this.primitive,
    required this.baseBlackgray,
    required this.greenSparateSecondary,
    required this.greenMainPrimaryPale,
    required this.textPrimaryFig,
  });

  const AppColors.light()
      : mainSecondary = FigmaColors.mainSecondary,
        mainPrimary = FigmaColors.mainPrimary,
        mainSecondaryPale = FigmaColors.mainSecondaryPale,
        mainPrimaryPale = FigmaColors.mainPrimaryPale,
        baseBlack = FigmaColors.baseBlack,
        baseWhite = FigmaColors.baseWhite,
        baseGreenGray = FigmaColors.baseGreenGray,
        baseGray = FigmaColors.baseGray,
        baseOrange = FigmaColors.baseOrange,
        baseRed = FigmaColors.baseRed,
        baseGold = FigmaColors.baseGold,
        baseYellow = FigmaColors.baseYellow,
        backgroundPrimary = FigmaColors.backgroundPrimary,
        backgroundSecondary = FigmaColors.backgroundSecondary,
        textPrimary = FigmaColors.textPrimary,
        separatePrimary = FigmaColors.separatePrimary,
        separateSecondary = FigmaColors.separateSecondary,
        textSecondary = FigmaColors.textSecondary,
        textTertiary = FigmaColors.textTertiary,
        textLink = FigmaColors.textLink,
        uniqueAccent = FigmaColors.uniqueAccent,
        uniqueDialogBg = FigmaColors.uniqueDialogBg,
        uniqueBadge = FigmaColors.uniqueBadge,
        textPrimaryFig = FigmaColors.textPrimaryFig,
        uniqueUsedCoupon = FigmaColors.uniqueUsedCoupon,
        textRedTrackingDialog = FigmaColors.textRedTrackingDialog,
        primitive = FigmaColors.primitive,
        baseBlackgray = FigmaColors.baseBlackgray,
        greenSparateSecondary = FigmaColors.greenSparateSecondary,
        greenMainPrimaryPale = FigmaColors.greenMainPrimaryPale;

  final Color mainSecondary;
  final Color mainPrimary;
  final Color mainSecondaryPale;
  final Color mainPrimaryPale;
  final Color baseBlack;
  final Color baseWhite;
  final Color baseGreenGray;
  final Color baseGray;
  final Color baseOrange;
  final Color baseRed;
  final Color baseGold;
  final Color baseYellow;
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color textPrimary;
  final Color separatePrimary;
  final Color separateSecondary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textLink;
  final Color uniqueAccent;
  final Color uniqueDialogBg;
  final Color uniqueBadge;
  final Color uniqueUsedCoupon;
  final Color textRedTrackingDialog;
  final Color primitive;
  final Color baseBlackgray;
  final Color greenSparateSecondary;
  final Color greenMainPrimaryPale;
  final Color textPrimaryFig;

  @override
  ThemeExtension<AppColors> copyWith({
    Color? mainSecondary,
    Color? mainPrimary,
    Color? mainSecondaryPale,
    Color? mainPrimaryPale,
    Color? baseBlack,
    Color? baseWhite,
    Color? baseGreenGray,
    Color? baseGray,
    Color? baseOrange,
    Color? baseRed,
    Color? baseGold,
    Color? baseYellow,
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? textPrimary,
    Color? separatePrimary,
    Color? separateSecondary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textLink,
    Color? uniqueAccent,
    Color? uniqueDialogBg,
    Color? uniqueBadge,
    Color? uniqueUsedCoupon,
    Color? primitive,
    Color? baseBlackgray,
    Color? greenSparateSecondary,
    Color? greenMainPrimaryPale,
  }) {
    return AppColors._(
      mainSecondary: mainSecondary ?? this.mainSecondary,
      mainPrimary: mainPrimary ?? this.mainPrimary,
      mainSecondaryPale: mainSecondaryPale ?? this.mainSecondaryPale,
      mainPrimaryPale: mainPrimaryPale ?? this.mainPrimaryPale,
      baseBlack: baseBlack ?? this.baseBlack,
      baseWhite: baseWhite ?? this.baseWhite,
      baseGreenGray: baseGreenGray ?? this.baseGreenGray,
      baseGray: baseGray ?? this.baseGray,
      baseOrange: baseOrange ?? this.baseOrange,
      baseRed: baseRed ?? this.baseRed,
      baseGold: baseGold ?? this.baseGold,
      baseYellow: baseYellow ?? this.baseYellow,
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      textPrimary: textPrimary ?? this.textPrimary,
      separatePrimary: separatePrimary ?? this.separatePrimary,
      separateSecondary: separateSecondary ?? this.separateSecondary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textLink: textLink ?? this.textLink,
      uniqueAccent: uniqueAccent ?? this.uniqueAccent,
      uniqueDialogBg: uniqueDialogBg ?? this.uniqueDialogBg,
      uniqueBadge: uniqueBadge ?? this.uniqueBadge,
      uniqueUsedCoupon: uniqueUsedCoupon ?? this.uniqueUsedCoupon,
      textRedTrackingDialog: textRedTrackingDialog,
      primitive: primitive ?? this.primitive,
      baseBlackgray: baseBlackgray ?? this.baseBlackgray,
      greenSparateSecondary:
          greenSparateSecondary ?? this.greenSparateSecondary,
      greenMainPrimaryPale: greenMainPrimaryPale ?? this.greenMainPrimaryPale,
      textPrimaryFig: textPrimaryFig,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors._(
      mainSecondary: Color.lerp(mainSecondary, other.mainSecondary, t)!,
      mainPrimary: Color.lerp(mainPrimary, other.mainPrimary, t)!,
      mainSecondaryPale:
          Color.lerp(mainSecondaryPale, other.mainSecondaryPale, t)!,
      mainPrimaryPale: Color.lerp(mainPrimaryPale, other.mainPrimaryPale, t)!,
      baseBlack: Color.lerp(baseBlack, other.baseBlack, t)!,
      baseWhite: Color.lerp(baseWhite, other.baseWhite, t)!,
      baseGreenGray: Color.lerp(baseGreenGray, other.baseGreenGray, t)!,
      baseGray: Color.lerp(baseGray, other.baseGray, t)!,
      baseOrange: Color.lerp(baseOrange, other.baseOrange, t)!,
      baseRed: Color.lerp(baseRed, other.baseRed, t)!,
      baseGold: Color.lerp(baseGold, other.baseGold, t)!,
      baseYellow: Color.lerp(baseYellow, other.baseYellow, t)!,
      backgroundPrimary:
          Color.lerp(backgroundPrimary, other.backgroundPrimary, t)!,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      separatePrimary: Color.lerp(separatePrimary, other.separatePrimary, t)!,
      separateSecondary:
          Color.lerp(separateSecondary, other.separateSecondary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textLink: Color.lerp(textLink, other.textLink, t)!,
      uniqueAccent: Color.lerp(uniqueAccent, other.uniqueAccent, t)!,
      uniqueDialogBg: Color.lerp(uniqueDialogBg, other.uniqueDialogBg, t)!,
      uniqueBadge: Color.lerp(uniqueBadge, other.uniqueBadge, t)!,
      uniqueUsedCoupon:
          Color.lerp(uniqueUsedCoupon, other.uniqueUsedCoupon, t)!,
      textRedTrackingDialog:
          Color.lerp(textRedTrackingDialog, other.textRedTrackingDialog, t)!,
      primitive: Color.lerp(primitive, other.primitive, t)!,
      baseBlackgray: Color.lerp(baseBlackgray, other.baseBlackgray, t)!,
      greenSparateSecondary:
          Color.lerp(greenSparateSecondary, other.greenSparateSecondary, t)!,
      greenMainPrimaryPale:
          Color.lerp(greenMainPrimaryPale, other.greenMainPrimaryPale, t)!,
      textPrimaryFig:
          Color.lerp(textPrimaryFig, other.textPrimaryFig, t)!,
    );
  }

  @override
  String toString() => 'AppColors('
      'mainSecondary: $mainSecondary'
      ', mainPrimary: $mainPrimary'
      ', mainSecondaryPale: $mainSecondaryPale'
      ', mainPrimaryPale: $mainPrimaryPale'
      ', baseBlack: $baseBlack'
      ', baseWhite: $baseWhite'
      ', baseGreenGray: $baseGreenGray'
      ', baseGray: $baseGray'
      ', baseOrange: $baseOrange'
      ', baseRed: $baseRed'
      ', baseGold: $baseGold'
      ', baseYellow: $baseYellow'
      ', backgroundPrimary: $backgroundPrimary'
      ', backgroundSecondary: $backgroundSecondary'
      ', textPrimary: $textPrimary'
      ', separatePrimary: $separatePrimary'
      ', separateSecondary: $separateSecondary'
      ', textSecondary: $textSecondary'
      ', textTertiary: $textTertiary'
      ', textLink: $textLink'
      ', uniqueAccent: $uniqueAccent'
      ', uniqueDialogBg: $uniqueDialogBg'
      ', uniqueBadge: $uniqueBadge'
      ', uniqueUsedCoupon: $uniqueUsedCoupon'
      ', textRedTrackingDialog: $textRedTrackingDialog'
      ', primitive: $primitive'
      ', baseBlackgray: $baseBlackgray'
      ', greenSparateSecondary: $greenSparateSecondary'
      ', greenMainPrimaryPale: $greenMainPrimaryPale'
      ', textPrimaryFig: $textPrimaryFig'
      ')';
}
