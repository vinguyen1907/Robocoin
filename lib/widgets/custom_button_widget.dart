import 'package:flutter/material.dart';
import 'package:robocoin/resources/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton._({
    super.key,
    this.text,
    this.child,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.onTap,
  }) : assert(text != null || child != null);

  final String? text;
  final Widget? child;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onTap;

  factory CustomButton.primaryButton({
    required BuildContext context,
    required String text,
    Color? backgroundColor,
    VoidCallback? onTap,
  }) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return CustomButton._(
      text: text,
      backgroundColor: backgroundColor,
      textColor: appColors.title,
      onTap: onTap,
    );
  }

  factory CustomButton.secondaryButton({
    required BuildContext context,
    required String text,
    Color? backgroundColor,
    Color? textColor,
    VoidCallback? onTap,
  }) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return CustomButton._(
      text: text,
      backgroundColor: backgroundColor ?? appColors.softPurple,
      textColor: textColor ?? appColors.purple1,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? appColors.purple,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(40),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Align(
              alignment: Alignment.center,
              child: text != null
                  ? Text(
                      text!,
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: textColor),
                    )
                  : child!,
            ),
          ),
        ),
      ),
    );
  }
}
