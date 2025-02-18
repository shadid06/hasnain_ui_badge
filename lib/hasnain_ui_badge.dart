import 'package:flutter/material.dart';

enum Variant {
  solid,
  secondary,
  outline,
  destructive,
}

class BadgeHasnainUI extends StatelessWidget {
  final Variant variant;
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final BorderSide? borderSide;
  final BorderRadius? borderRadius;
  final bool? isDisabled;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final double? elevation;
  final Color? textColor;

  const BadgeHasnainUI({
    Key? key,
    required this.text,
    this.onPressed,
    this.variant = Variant.solid,
    this.backgroundColor,
    this.borderSide,
    this.borderRadius,
    this.isDisabled = false,
    this.textStyle,
    this.width,
    this.height,
    this.elevation,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InkWell badge;
    switch (variant) {
      case Variant.solid:
        badge = InkWell(
          onTap: isDisabled == true ? null : onPressed,
          child: SizedBox(
            width: width ?? 80,
            height: height ?? 30,
            child: Card(
              color: backgroundColor ?? Colors.black,
              elevation: elevation ?? 0.1,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(6),
                side: BorderSide.none,
              ),
              child: Center(
                child: Text(
                  text,
                  style: textStyle ??
                      TextStyle(
                          color: textColor ?? Colors.white,
                          fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        );
        break;
      case Variant.secondary:
        badge = InkWell(
          onTap: isDisabled == true ? null : onPressed,
          child: SizedBox(
            width: width ?? 80,
            height: height ?? 30,
            child: Card(
              color: Colors.grey.shade200,
              elevation: elevation ?? 0.1,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(6),
                side: BorderSide.none,
              ),
              child: Center(
                child: Text(
                  text,
                  style: textStyle ??
                      const TextStyle(
                          color: Color.fromARGB(221, 26, 25, 25),
                          fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        );
        break;
      case Variant.destructive:
        badge = InkWell(
          onTap: isDisabled == true ? null : onPressed,
          child: SizedBox(
            width: width ?? 80,
            height: height ?? 30,
            child: Card(
              color: Colors.red,
              elevation: elevation ?? 0.1,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(6),
                side: BorderSide.none,
              ),
              child: Center(
                child: Text(
                  text,
                  style: textStyle ??
                      const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        );
        break;
      case Variant.outline:
        badge = InkWell(
          onTap: isDisabled == true ? null : onPressed,
          child: SizedBox(
            width: width ?? 80,
            height: height ?? 30,
            child: Card(
              color: Colors.white,
              elevation: elevation ?? 0.1,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(6),
                side: borderSide ??
                    const BorderSide(color: Colors.black, width: 1),
              ),
              child: Center(
                child: Text(
                  text,
                  style: textStyle ??
                      TextStyle(
                          color: textColor ?? Colors.black,
                          fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        );
        break;

      default:
        badge = const InkWell();
        break;
    }
    return badge;
  }
}
