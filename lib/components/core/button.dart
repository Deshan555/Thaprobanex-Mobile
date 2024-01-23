import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  Button({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.boldStatus,
    this.textSize,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
    this.elevation,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.iconPadding,
    this.iconPosition,
    this.loading,
    this.loadingColor,
    this.loadingSize,
    this.loadingPadding,
    this.loadingPosition,
  }) : super(key: key);

  final String text;
  final bool? boldStatus;
  final double? textSize;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final double? elevation;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final EdgeInsetsGeometry? iconPadding;
  final MainAxisAlignment? iconPosition;
  final bool? loading;
  final Color? loadingColor;
  final double? loadingSize;
  final EdgeInsetsGeometry? loadingPadding;
  final MainAxisAlignment? loadingPosition;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed != null ? onPressed : () {},
        style: ElevatedButton.styleFrom(
          primary: color,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
          ),
          elevation: elevation,
        ),
        child: loading == true
            ? Row(
                mainAxisAlignment: loadingPosition ?? MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: loadingPadding?.horizontal ?? 0,
                    height: loadingPadding?.vertical ?? 0,
                    child: CircularProgressIndicator(
                      strokeWidth: loadingSize ?? 2,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        loadingColor ?? Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: iconPosition ?? MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    Padding(
                      padding: iconPadding ?? const EdgeInsets.all(0),
                      child: Icon(
                        icon,
                        color: iconColor ?? Colors.white,
                        size: iconSize ?? 20,
                      ),
                    ),
                  Text(
                    text,
                    style: GoogleFonts.roboto(
                      fontSize: textSize ?? 12,
                      fontWeight: boldStatus == true
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: textColor ?? Colors.white,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}